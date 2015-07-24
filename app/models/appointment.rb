class Appointment < ActiveRecord::Base
  extend SimpleCalendar
  has_calendar :attribute => :scheduled_time
  belongs_to :recruiter
  belongs_to :user
  validates_presence_of :scheduled_time
  validates_presence_of :location

  def availability
    if user == nil
      "Available"
    else
      user.formatted_name
    end
  end

#doesn't work yet
  # def link_to_user(user)
  #     link_to user.formatted_name,
  #             /user/user.id
  # end
end
