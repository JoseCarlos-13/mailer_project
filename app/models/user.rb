class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true

		after_create :send_email

    private

		def send_email
			UserMailer.new_email(self).deliver_now
			UserMailer.new_email_2(self).deliver_now
		end
    # def send_email(progress_type, params)
    #     choose_email = {
    #       email_a: -> () { UserMailer.new_email(progress_type, params) },
    #       # email_b: -> () { puts "enviar para email do tipo b, De #{params[:from]}" }
    #   }

    #     choose_email[progress_type.to_sym].call()
    #   end

    #   params = { from: 'operator1@gmail.com', to: 'ricardo.b.silva13@gmail.com' }


    #   send_email('email_a', params)
end
