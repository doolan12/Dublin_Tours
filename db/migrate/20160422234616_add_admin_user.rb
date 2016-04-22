class AddAdminUser < ActiveRecord::Migration
  def change
  	u = User.create(:first_name => "Guides" , :last_name => "Admin" , :email => "admin@gmail.com" , :password => "admin123")
    u.add_role :admin
  end
end
