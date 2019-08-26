json.extract! export_user, :id, :emp_id, :branch_id, :region_id, :last_name, :first_name, :job_title, :email_address, :fk_user_id, :financial_advisor_id, :area_id, :created_at, :updated_at
json.url export_user_url(export_user, format: :json)
