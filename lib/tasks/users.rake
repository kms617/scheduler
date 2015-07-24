namespace :data do
  namespace :devise do
    desc 'Create the user models'
    task load: :environment do

      user_data_path = Rails.root.join('db/data/users2.csv')
      user_data = File.read(user_data_path)
      user_count = user_data.each_line.count - 1

      CSV.foreach(user_data,
                headers: true,
                header_converters: :symbol) do |user|
          new_user = User.new(user)
          new_user.save(validate: false)
      end
    end

    class User
      def initialize(attrs)
        @attrs = attrs.to_h
      end

      def self.create(attrs)
        new(attrs).create
      end

      def create
        user = User.create(email: @attrs['email'],
                          password: @attrs['password'],
                          first_name: @attrs['first_name'],
                          last_name: @attrs['last_name'],
                          major: @attrs['major'],
                          degree: @attrs['degree'],
                          year: @attrs['year'])
      end
    end
  end
end
