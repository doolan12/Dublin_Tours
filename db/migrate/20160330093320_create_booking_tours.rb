class CreateBookingTours < ActiveRecord::Migration
  def change
    create_table :booking_tours do |t|
      t.integer :booking_id
      t.integer :tour_id
      t.float :price
    end
  end
end
