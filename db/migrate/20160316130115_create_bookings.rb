class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :guide_user_id
      t.datetime :from_time
      t.datetime :to_time
      t.float :price
      t.datetime :created_at
      t.datetime :updated_at
      t.boolean :confirm

      t.timestamps null: false
    end
  end
end
