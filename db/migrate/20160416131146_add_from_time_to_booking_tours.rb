class AddFromTimeToBookingTours < ActiveRecord::Migration
  def change
    add_column :booking_tours, :from_time, :datetime
    add_column :booking_tours, :to_time, :datetime
  end
end
