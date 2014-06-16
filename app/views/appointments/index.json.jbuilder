json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :requested_date, :activity, :confirmed
  json.url appointment_url(appointment, format: :json)
end
