json.array!(@bookings) do |booking|
  json.extract! booking, :id, :user_id, :guide_user_id, :from_time, :to_time, :price, :created_at, :updated_at, :confirm
  json.url booking_url(booking, format: :json)
end
