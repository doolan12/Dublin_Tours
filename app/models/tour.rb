class Tour < ActiveRecord::Base
  belongs_to :user
  has_many :booking_tours
  has_many :reviews , :dependent =>  :destroy

  mount_uploader :photo1, PhotoUploader
  mount_uploader :photo2, PhotoUploader
  mount_uploader :photo3, PhotoUploader

  ratyrate_rateable "experience"

end