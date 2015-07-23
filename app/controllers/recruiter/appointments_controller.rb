class Recruiter::AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.(params[:id])

    if @appointment.update(appointment_params)
      redirect_to appointments_path
    else
      render :new
    end
  end

  def appointment_params
    params.require(:appointment).permit(:scheduled_time, :location, :recruiter_id)
  end
end
