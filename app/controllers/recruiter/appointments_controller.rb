class Recruiter::AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end
end
