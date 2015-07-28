class User::RegistrationsController < Devise::RegistrationsController
  skip_before_filter :verify_authenticity_token
  
  def book_appointment
    repond_to do |format|
      format.js
    end
  end
end
