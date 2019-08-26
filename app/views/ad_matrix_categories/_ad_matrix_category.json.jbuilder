json.extract! ad_matrix_category, :id, :category_name, :fk_parent_category_id, :is_active, :sort_order, :fk_featured_headline_id, :date_embargo, :date_expiration, :level, :thumbnail_unique_name, :thumbnail_upload_name, :date_created, :date_modified, :fk_latest_template_id, :copied_headline_id, :created_at, :updated_at
json.url ad_matrix_category_url(ad_matrix_category, format: :json)
