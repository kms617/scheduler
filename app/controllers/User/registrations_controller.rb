class User::RegistrationsController < Devise::RegistrationsController

  def book_appointment
    repond_to do |format|
      format.js
    end
  end
end
