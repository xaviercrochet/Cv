require 'open-uri'
class User < ActiveRecord::Base

	before_save { 
		self.email = email.downcase
		 }
	VALID_EMAIL_REGEX = /\A\S+@.+\.\S+\z/
	validates :email, presence: true, format: {with: VALID_EMAIL_REGEX, message: " doit être de la forme foo@bar.foo" }
	validates :cv, presence: true
	


	has_attached_file :cv, :path => "data/:id/:filename"
	validates_attachment :cv, content_type: { content_type: "application/pdf" }
	
	belongs_to :faculty

	def self.registered?(email)
		User.where(:email => email.downcase).count > 0
	end

	def self.get_by_email(email)
		User.where(:email => email.downcase).first
	end

	def download_link
		URI.escape("https://s3-eu-west-1.amazonaws.com/ccicvs/data/"+self.id.to_s+"/"+self.cv_file_name)
	end

	def display_link
		url = "http://docs.google.com/viewer?url="+self.download_link+"&embedded=true"
		URI.escape(url)
	end

	def mark_as_corrected
		self.corrected = true
		self.save
	end

	def statut
		if self.corrected
			"Corrigé"
		else
			"Non Corrigé"
		end
	end
end
