namespace :data do
  task load: 'db:setup' do
    Rake::Task['data:users:load'].invoke
  end
end
