json.extract! reply, :id, :name, :body, :post_id, :created_at, :updated_at
json.url reply_url(reply, format: :json)
