class Recruiter::AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user_id = current_user

    if @appointment.save
      redirect_to appointments_path
    else
      render :new
    end
  end

  def appointment_params
    params.require(:appointment).permit(:scheduled_time, :location, :user_id)
  end
end
