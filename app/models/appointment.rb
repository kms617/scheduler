class Appointment < ActiveRecord::Base
  extend SimpleCalendar
  has_calendar :attribute => :scheduled_time
  belongs_to :recruiter
  validates_presence_of :scheduled_time
  validates_presence_of :location
end
