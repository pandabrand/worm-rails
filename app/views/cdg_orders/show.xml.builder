xml.instruct!
xml.SUBMISSION(
  'xmlns' => 'http://morganstanley.com/archive_ingestion',
  'xmlns:jxb' => 'http://java.sun.com/xml/ns/jaxb',
  'xsi:schemaLocation' => 'http://morganstanley.com/archive_ingestion schema.xsd',
  'xmlns:xsi' => 'http://www.w3.org/2001/XMLSchema-instance'
) do
  xml.SNAME @cdg_order.ad_type + ' - ' + @cdg_order.pk_id.to_s
  xml.ILM_SUBMITTER 'padpato'
  xml.OBJ do
    xml.ONAME @cdg_order.ad_type
    xml.ILM_ORIGINATOR 'padpato'
    xml.ILM_EON_ID '24944'
    xml.ILM_RCC('code' => 'ENS150') do
      xml.ILM_ISO_COUNTRY 'USA'
      xml.ILM_REC_DT @cdg_order.approval.nil? ? '' : @cdg_order.approval.ilm_rec_dt
      xml.LDAP_GROUP 'adbuilder_era_archive_uat_access'
      xml.ILM_COST_CTR_NO '575440'
      xml.ILM_INFO_SEC_CLASS 'CONFIDENTIAL'
      xml.ILM_OFFCL_REC 1
      xml.ILM_BU_OWNER({ 'owner-type' => 'MSSUPERDEPARTMENTCODE' }, '87679')
      xml.METADATA({ 'field-name' => 'ILM_NAME' }, @cdg_order.ad_type)
      xml.METADATA({ 'field-name' => 'ILM_OFFCL_REC' }, 'official')
      xml.METADATA({ 'field-name' => 'ILM_RCC' }, 'Public')
      xml.METADATA({ 'field-name' => 'ILM_MS_STATUS' }, @cdg_order.cdg_order_status.name)
      xml.METADATA({ 'field-name' => 'ILM_ORIGINATOR' }, 'zqadpato')
      xml.METADATA({ 'field-name' => 'ILM_ACTIVE' }, 'inactive')
      # xml.METADATA({ 'field-name' => 'ILM_REC_DT' }, @cdg_order.approval.date_created)
      # xml.METADATA({ 'field-name' => 'ILM_SUB_DATE' }, @cdg_order.date_submitted)
      # xml.METADATA({ 'field-name' => 'ILM_DESC' }, @cdg_order.cdg_template.headline.title)
      xml.METADATA({ 'field-name' => 'ILM_DESC' }, @cdg_order.ilm_desc)
      xml.METADATA({ 'field-name' => 'ILM_TRANS_TYPE' }, @cdg_order.ad_type)
      xml.METADATA({ 'field-name' => 'ILM_ACCT_NO' }, @cdg_order.pk_id)
      xml.METADATA({ 'field-name' => 'ILM_AMOUNT' }, number_to_currency(@cdg_order.cost, unit: '', delimiter: ''))
      unless @cdg_order.cdg_template.code.blank?
        xml.METADATA({ 'field-name' => 'ILM_DOCKET_NO' }, @cdg_order.cdg_template.code)
      end
      xml.METADATA({ 'field-name' => 'ILM_BRANC_NO' }, @cdg_order.lab_branch.ilm_branc_no)
      xml.METADATA({ 'field-name' => 'ILM_INST_NM' }, @cdg_order.lab_branch.name)
      xml.METADATA({ 'field-name' => 'ILM_REGION' },  @cdg_order.lab_branch.ilm_region)
      xml.METADATA({ 'field-name' => 'ILM_DEPT_CODE' }, @cdg_order.lab_branch.ilm_dept)
      xml.METADATA({ 'field-name' => 'ILM_CONTACT_NM' }, @cdg_order.creator.lab_user_info.full_name)
      xml.METADATA({ 'field-name' => 'ILM_VEND_NM' }, 'AdBuilder')
    end
    xml.DELIVERY('path' => "//v/global/appl/ilink/era/data/dropzones/LocalAdBuilder/#{@cdg_order.filename}")
  end
end
