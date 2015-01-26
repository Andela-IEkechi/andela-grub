json.array!(@foods) do |food|
  json.extract! food, :id, :item, :minimum_amount
  json.url food_url(food, format: :json)
end
