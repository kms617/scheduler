class AppointmentsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.recruiter_id = current_user

    if @appointment.save
      redirect_to appointments_path
    else
      render :new
    end
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
    params.require(:appointment).permit(:scheduled_time, :location, :user_id)
  end
end
