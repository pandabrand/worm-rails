json.extract! portrait_image, :id, :date_uploaded, :file_size, :file_type, :filename, :fk_order_id, :fk_userinfo_id, :height, :orig_filename, :width, :isUserDefault, :created_at, :updated_at
json.url portrait_image_url(portrait_image, format: :json)
