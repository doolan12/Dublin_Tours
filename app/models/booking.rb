class Booking < ActiveRecord::Base
	belongs_to :user
  	belongs_to :guide_user , class_name: "User"
  	has_many :booking_tours , :dependent => :destroy

  	accepts_nested_attributes_for :booking_tours , :allow_destroy => true
end
