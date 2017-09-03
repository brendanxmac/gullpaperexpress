json.extract! order, :id, :title, :location, :delivery_time, :details, :attachment, :status, :user_id, :created_at, :updated_at
json.url order_url(order, format: :json)
