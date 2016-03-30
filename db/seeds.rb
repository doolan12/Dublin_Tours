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


 #u = User.create(:first_name => "John" , :last_name => "Doolan" , :email => "john@gmail.com" , :password => "john" , :rate_per_hour => 20)

 #Tour.create(:user_id => u.id , :name => "Jurassic Park Tour" , :description => "2 hours trip to the Jurassic park" , :price => 500)
 #Tour.create(:user_id => u.id , :name => "Train Tour" , :description => "2 hours trip to the train station" , :price => 200)


u = User.find_by_email("stephen@gmail.com")
u.add_role :guide


u = User.find_by_email("john@gmail.com")
u.add_role :guide