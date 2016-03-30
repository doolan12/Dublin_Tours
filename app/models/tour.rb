class Tour < ActiveRecord::Base
  belongs_to :user
  has_many :booking_tours
end