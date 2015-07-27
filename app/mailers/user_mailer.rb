class UserMailer < ActionMailer::Base
  default from: 'scheduler@microsoft.com'
    def booking_email(appointment, user)
      @user = user
      @appointment = appointment
      mail(to: @user.email,
           subject: "Your Microsoft appointment")
    end
end
