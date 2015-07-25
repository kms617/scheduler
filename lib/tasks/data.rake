namespace :data do
  task load: 'db:setup' do
    Rake::Task['data:users:load'].invoke
    Rake::Task['data:recruiters:load'].invoke
    Rake::Task['data:appointments:load'].invoke
  end
end
