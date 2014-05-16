json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :type, :breed, :description, :image_url, :size
  json.url pet_url(pet, format: :json)
end
