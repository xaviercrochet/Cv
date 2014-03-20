class User < ActiveRecord::Base

	has_attached_file :cv, :path => "#{Rails.root}/data/:id/:filename"
	validates_attachment :cv, content_type: { content_type: "application/pdf" }
	
	def self.registered?(email)
		User.where(:email => email).count > 0
	end
end
