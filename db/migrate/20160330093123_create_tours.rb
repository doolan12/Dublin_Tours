class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :name
      t.integer :user_id
      t.text :description
      t.float :price
    end
  end
end
