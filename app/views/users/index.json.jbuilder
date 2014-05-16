json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :email, :admin, :adress_street, :phone1, :phone2, :phone3, :adress_number, :adress_apartment, :location, :state, :country
  json.url user_url(user, format: :json)
end
