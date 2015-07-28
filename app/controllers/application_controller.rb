class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email,
                                                            :password,
                                                            :password_confirmation,
                                                            :first_name,
                                                            :last_name,
                                                            :major,
                                                            :year,
                                                            :degree) }
  end

  protect_from_forgery with: :exception
end
