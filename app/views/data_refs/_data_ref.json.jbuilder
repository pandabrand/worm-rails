json.extract! data_ref, :id, :value, :type, :fk_type_id, :created_at, :updated_at
json.url data_ref_url(data_ref, format: :json)
