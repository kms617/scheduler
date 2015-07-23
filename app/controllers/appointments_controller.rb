class AppointmentsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @appointments = Appointment.all
  end

  def edit
    @appointment = Appointment.find_by(params[:id])
  end

  def update
    @appointment = Appointment.find_by(params[:id])

    if @appointment.update(appointment_params)
      redirect_to appointments_path
    else
      render :new
    end
  end

  def appointment_params
    params.require(:appointment).permit(:user_id)
  end
end
