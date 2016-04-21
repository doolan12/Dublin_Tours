class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :tour_id
      t.integer :user_id
      t.string :review_title
      t.text :comment

      t.timestamps null: false
    end
  end
end