json.array!(@breakfast_orders) do |breakfast_order|
  json.extract! breakfast_order, :id, :user_id, :menu_content_id
  json.url breakfast_order_url(breakfast_order, format: :json)
end
