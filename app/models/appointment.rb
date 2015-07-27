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

  def info
    user.stats
  end

  def message
    "Book an appointment at #{scheduled_time.strftime("%l:%M %P")} in #{location}?"
  end

  def user_name
    user.first_name
  end

  def user_email
    user.email
  end

  def candidateurl
    "https://cls2.bullhornstaffing.com/BullhornSTAFFING/OpenWindow.cfm?Entity=Candidate&ID=4800477"
  end
end
