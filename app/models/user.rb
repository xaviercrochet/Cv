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
end
