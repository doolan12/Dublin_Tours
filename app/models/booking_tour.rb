class BookingTour < ActiveRecord::Base
  belongs_to :booking
  belongs_to :tour
end