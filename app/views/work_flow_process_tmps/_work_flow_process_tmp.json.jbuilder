json.extract! work_flow_process_tmp, :id, :end_condition_code, :is_active, :name, :start_code, :start_condition_code, :fk_parent_process_id, :submit_code, :created_at, :updated_at
json.url work_flow_process_tmp_url(work_flow_process_tmp, format: :json)
