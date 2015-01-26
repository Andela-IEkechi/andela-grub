json.array!(@lunch_orders) do |lunch_order|
  json.extract! lunch_order, :id, :user_id, :menu_content_id
  json.url lunch_order_url(lunch_order, format: :json)
end
