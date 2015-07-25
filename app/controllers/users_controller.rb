class UsersController<ActiveRecord::Base
before_filter :get_appointment

def get_appointment
  @appointment = Appointment.find(params[:id])
end

def new
  @user = User.new
  @appointment = Appointment.find(params[:id])
end

def create
  @user = User.new(user_params)
  @user.password = 'bull123horn'
  @user.password_confirmation = 'bull123horn'
  @appointment.user = @user
  @appointment.booked = true
end

def user_params
  params.require(:user).permit(:email, :first_name, :last_name, :major, :degree, :year)
end
end
