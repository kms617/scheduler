class AppointmentsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def appointment_params
    params.require(:appointment).permit(:user_id)
  end

  def user_params
    params.require(:user).permit(:password, :password_confirmation, :first_name, :last_name)
  end
end
