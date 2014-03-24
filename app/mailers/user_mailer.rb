class UserMailer < ActionMailer::Base

	def new_cv(user)
		@user = user
		mail(to: 'contact.ci.industries@gmail.com', subject: 'New cv uploaded')
	end
end
