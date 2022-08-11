class UserMailer < ApplicationMailer
	default from: 'emailfake@gmail.com'

	def new_email(user)
		@user = user

		mail(to: @user.email, subject: 'New email send to the user account')
	end

	def new_email_2(user)
		@user = user

		mail(to: @user.email, subject: 'New email send to the user account 2')
	end
end
