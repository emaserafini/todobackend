json.extract! todo_item, :id, :title, :completed, :url, :order, :created_at, :updated_at
json.url api_todo_item_url(todo_item, format: :json)
