# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User.create(:first_name => "Stephen" , :last_name => "Dean" , :email => "stephen@gmail.com" , :password => "stephen" , :rate_per_hour => 20)
 #u = User.find_by_first_name("Stephen")
#Tour.create(:user_id => u.id , :name => "Zoo Tour" , :description => "2 hours trip to the central zoo" , :price => 50)
# Tour.create(:user_id => u.id , :name => "Museum Tour" , :description => "2 hours trip to the central museum" , :price => 70)
#Tour.create(:user_id => u.id , :name => "Gallery Tour" , :description => "2 hours trip to the central gallery" , :price => 100)


 #u = User.create(:first_name => "david" , :last_name => "Dean" , :email => "dean@gmail.com" , :password => "dean" , :rate_per_hour => 20)
 #u = User.create(:first_name => "Janice" , :last_name => "kelly" , :email => "jk@gmail.com" , :password => "jkely" , :rate_per_hour => 30)
 #u = User.create(:first_name => "Mary" , :last_name => "Keating" , :email => "mkeating@gmail.com" , :password => "mkeating" , :rate_per_hour => 50)
 #u = User.create(:first_name => "Paul" , :last_name => "Walsh" , :email => "walsh@gmail.com" , :password => "pwalsh" , :rate_per_hour => 60)

 Tour.create(:user_id => 9 , :name => "Dublin Mueseem" , :description => "view some of the oldest and most valuable artifacts in ireland" , :price => 100)
 Tour.create(:user_id => 9 , :name => "Croke Park" , :description => "Complete tour of irelands biggest stadium" , :price => 150)
 Tour.create(:user_id => 11 , :name => "Wax World" , :description => "celebrity wax works" , :price => 125)
 Tour.create(:user_id => 11 , :name => "Viking Tour" , :description => "2 hours trip with viking " , :price => 200)
 Tour.create(:user_id => 12 , :name => "Aviva Stadium" , :description => "complete tour of the Aviva " , :price => 60)
 Tour.create(:user_id => 12 , :name => "Sea World Tour" , :description => "see some of the greatest animals who live under the sea" , :price => 95)
 Tour.create(:user_id => 13 , :name => "Train Tour" , :description => "2 hours trip to the train station" , :price => 50)
 Tour.create(:user_id => 13 , :name => "1916 events " , :description => "covers all major events of the historical year" , :price => 200)
 Tour.create(:user_id => 6 , :name => "bus Tour" , :description => "Open top bus tour through dublin" , :price => 100)
  Tour.create(:user_id => 6 , :name => "Car Mueseem" , :description => "view the most valuable car ever created" , :price => 140)