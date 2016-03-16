class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :address
      t.string :mobile
      t.float :rate_per_hour

      t.timestamps null: false
    end
  end
end
