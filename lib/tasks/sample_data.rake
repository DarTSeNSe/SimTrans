namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!(:name => "Sense",
                 :email => "sense8life@gmail.com",
                 :password => "0334818",
                 :password_confirmation => "0334818")
    admin.toggle!(:admin)

    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@rails.org"
      password  = "password"
      User.create!(:name => name,
                   :email => email,
                   :password => password,
                   :password_confirmation => password)
    end

    User.all(:limit => 6).each do |user|
      50.times do
        user.phrases.create!(:phrase => Faker::Lorem.sentence(5), :tag => Faker::name)
      end
    end
  end
end