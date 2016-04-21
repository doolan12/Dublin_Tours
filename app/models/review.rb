class Review < ActiveRecord::Base
	belongs_to :tour
	belongs_to :user
	validates_presence_of :review_title , :comment
end
