class ApprovalDetail < ApplicationRecord
  self.table_name = 'approval_detail'
  belongs_to :cdg_role, class_name: 'cdg_role', foreign_key: 'fk_role_id'
  belongs_to :cdg_order, class_name: 'CdgOrder', foreign_key: 'fk_order_id'
  belongs_to :cdg_user, class_name: 'CdgUser', foreign_key: 'fk_user_id'
  belongs_to :work_flow_activity_instance, class_name: 'WorkFlowActivityInstance', foreign_key: 'fk_work_activity_instance_id'

  def ilm_rec_dt
    date_created.strftime '%Y-%m-%d'
  end
end
