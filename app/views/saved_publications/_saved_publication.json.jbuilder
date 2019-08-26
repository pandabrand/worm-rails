json.extract! saved_publication, :id, :contact_name, :contact_phone, :contact_email_address, :date_created, :fk_creator_id, :fk_publication_type_id, :is_active, :publication_name, :created_at, :updated_at
json.url saved_publication_url(saved_publication, format: :json)
