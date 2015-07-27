class AppointmentsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
    @appointment.save
    redirect_to appointments_path
  end

private
  def appointment_params
    params.require(:appointment).permit(:user_id, :booked)
  end
end
