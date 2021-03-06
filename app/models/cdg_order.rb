class CdgOrder < ApplicationRecord
  self.table_name = 'cdg_order'
  belongs_to :creator, class_name: 'CdgUser', foreign_key: 'fk_creator_id'
  belongs_to :publication_type, class_name: 'PublicationType', foreign_key: 'fk_publication_type_id'
  belongs_to :cdg_template, class_name: 'CdgTemplate', foreign_key: 'fk_template_id'
  belongs_to :cdg_order_status, class_name: 'CdgOrderStatus', foreign_key: 'fk_order_status_id'
  belongs_to :lab_area, class_name: 'LabArea', foreign_key: 'fk_area_id'
  belongs_to :lab_region, class_name: 'LabRegion', foreign_key: 'fk_region_id'
  belongs_to :lab_branch, class_name: 'LabBranch', foreign_key: 'fk_branch_id'
  has_many :approval_details, foreign_key: 'fk_order_id'
  has_many :additional_run_dates, foreign_key: 'fk_order_id'
  has_one :worm

  def ad_type
    publication_type.name == 'Website' ? 'Digital Ad' : 'Print Ad'
  end

  def file_prefix
    publication_type.name == 'Website' ? 'Digital' : 'Print'
  end

  def approval
    approval_details.sort_by(&:date_created).last
  end

  def first_level_approval
    approvals = approval_details.select { |hash| hash[:user_role] == 'Branch Manager' }
    approvals.sort_by(&:status_description).first
  end

  def second_level_approval
    approvals = approval_details.select { |hash| hash[:user_role] != 'Branch Manager' }
    approvals.sort_by(&:status_description).first
  end

  def hi_res_parts
    hi_res_uri.blank? ? [] : hi_res_uri.split('\\\\')
  end

  def filename
    hi_res_parts.last
  end

  def pickup_file
    "public/pickup/#{filename}"
  end

  def extname
    filename.slice(filename.index('.'), 4)
  end

  def rec_date
    Time.now.strftime '%Y%m%d_%H%M'
  end

  def worm_name_resource
    "#{file_prefix}_#{pk_id}_#{rec_date}"
  end

  def drop_path
    "public/drop/#{pk_id}"
  end

  def drop_files
    Dir.glob("#{drop_path}/*.{pdf,gif,xml}")
  end

  def ilm_desc
    if approval.nil?
      @created = 'empty'
    else
      @created = approval.date_created.strftime '%Y-%m-%d'
    end

    if date_submitted.nil?
      @submitted
    else
      @submitted = date_submitted.strftime '%Y-%m-%d'
    end

    'headline-' + cdg_template.headline.title + '-approval-' + @created + '-submitted-' + @submitted
  end
end
