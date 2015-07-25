namespace :data do
  namespace :appointments do
    desc 'Create the appointments'
    task load: :environment do

      appt_data_path = Rails.root.join('db/data/appointments.csv')
      appt_data = File.read(appt_data_path)
      appt_count = appt_data.each_line.count - 1

      CSV.parse(appt_data,
                headers: true,
                header_converters: :symbol).each do |appt|
        appointment = Booking.create(appt)
      end
    end

    class Booking
      def initialize(attrs)
        @attrs = attrs.to_h
      end

      def self.create(attrs)
        new(attrs).create
      end

      def create
        appointment = Appointment.create(scheduled_time: @attrs[:scheduled_time],
                                 booked: @attrs[:booked],
                                 location: @attrs[:location],
                                 user_id: @attrs[:user_id],
                                 recruiter_id: @attrs[:recruiter_id])
        appointment
      end
    end
  end
end
