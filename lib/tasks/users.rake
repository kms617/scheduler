namespace :data do
  namespace :users do
    desc 'Create the users'
    task load: :environment do

      user_data_path = Rails.root.join('db/data/users.csv')
      user_data = File.read(user_data_path)
      user_count = user_data.each_line.count - 1

      CSV.parse(user_data,
                headers: true,
                header_converters: :symbol).each do |usr|
        user = Candidate.create(usr)
      end
    end

    class Candidate
      def initialize(attrs)
        @attrs = attrs.to_h
      end

      def self.create(attrs)
        new(attrs).create
      end

      def create
        user = User.create(email: @attrs[:email],
                                 password: @attrs[:password],
                                 password_confirmation: @attrs[:password],
                                 first_name: @attrs[:first_name],
                                 last_name: @attrs[:last_name],
                                 degree: @attrs[:degree],
                                 year: @attrs[:year],
                                 major: @attrs[:major])
        user
      end
    end
  end
end
