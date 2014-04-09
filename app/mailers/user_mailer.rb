class UserMailer < ActionMailer::Base
	default from: "contact.ci.industries@gmail.com"

	def new_cv(user)
		@user = user
		mail(to: 'contact.ci.industries@gmail.com', subject: 'New cv uploaded')
	end

	def correct(user, admin_email, message)
		@message = message
		@user = user
		@admin_email = admin_email
		mail(to: user.email, subject: 'Votre cv a été corrigé')
	end
end
