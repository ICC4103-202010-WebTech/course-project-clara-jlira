json.extract! notification, :id, :index, :show, :created_at, :updated_at
json.url notification_url(notification, format: :json)
