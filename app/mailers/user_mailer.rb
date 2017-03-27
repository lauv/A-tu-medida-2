class UserMailer < ApplicationMailer
	default from: "clearuniversek@gmail.com"
	
	def welcome_email(user)
		@user = user
		@url  = 'http://example.com/login'
		mail(to: @user.email, subject: 'Welcome to My Awesome Site')
	end

	def welcome_email_designer(user)
		@user = user
		@url  = 'http://example.com/login'
		mail(to: @user.email, subject: 'Welcome to My Awesome Site')
	end

	def rejected_email_designer(user)
		@user = user
		@url  = 'http://example.com/login'
		mail(to: @user.email, subject: 'from to My Awesome Site')
	end
end

# UserMailer.welcome_email().deliver_now()