namespace :data do
  namespace :recruiters do
    desc 'Create the recruiterss'
    task load: :environment do

      recruiter_data_path = Rails.root.join('db/data/recruiters.csv')
      recruiter_data = File.read(recruiter_data_path)
      recruiter_count = recruiter_data.each_line.count - 1

      CSV.parse(recruiter_data,
                headers: true,
                header_converters: :symbol).each do |recruitr|
        recruiter = Person.create(recruitr)
      end
    end

    class Person
      def initialize(attrs)
        @attrs = attrs.to_h
      end

      def self.create(attrs)
        new(attrs).create
      end

      def create
        recruiter = Recruiter.create(email: @attrs[:email],
                                 password: @attrs[:password],
                                 password_confirmation: @attrs[:password],
                                 first_name: @attrs[:first_name],
                                 last_name: @attrs[:last_name]
                                )
        recruiter
      end
    end
  end
end
