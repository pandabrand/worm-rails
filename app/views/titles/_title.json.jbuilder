json.extract! title, :id, :name, :sort_order, :is_active, :is_title_1, :is_title_2, :is_title_3, :created_at, :updated_at
json.url title_url(title, format: :json)
