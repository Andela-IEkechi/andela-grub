json.array!(@dinner_orders) do |dinner_order|
  json.extract! dinner_order, :id, :user_id, :menu_content_id
  json.url dinner_order_url(dinner_order, format: :json)
end
