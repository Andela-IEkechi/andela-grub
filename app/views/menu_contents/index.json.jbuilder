json.array!(@menu_contents) do |menu_content|
  json.extract! menu_content, :id, :day_id, :food_id
  json.url menu_content_url(menu_content, format: :json)
end
