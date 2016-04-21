class AddPhotoToTours < ActiveRecord::Migration
  def change
    add_column :tours, :photo1, :string
    add_column :tours, :photo2, :string
    add_column :tours, :photo3, :string
  end
end
