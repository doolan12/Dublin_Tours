class AddGuideToUsers < ActiveRecord::Migration
  def change
    add_column :users, :guide, :boolean
  end
end
