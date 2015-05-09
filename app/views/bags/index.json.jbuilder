json.array!(@bags) do |bag|
  json.extract! bag, :id, :size, :locker_id
  json.url bag_url(bag, format: :json)
end
