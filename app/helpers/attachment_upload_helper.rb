module AttachmentUploadHelper
  # params 使用请查看 app/assets/javascripts/attachment_upload.js
  # (
  # params['attachment_type'].blank? ||
  #   params['attachment_id'].blank? ||
  #   params['object_name'].blank?
  # )
  def upload_attachment_tag(params={})

    # 使用默认路由 '/attachment/update' 上传附件时需要检查参数
    if params['object_locked'].blank? && params['url'].blank? && params['attachment_type'].blank?
      Log.error "upload_attachment need 'attachment_type'"
      return nil
    end
    class_string = (0...16).map {(65 + rand(26)).chr}.join
    html = <<-HERE
      <div class=#{class_string}></div>
      <script>
        $(function(){
          $('.#{class_string}').uploadAttachment('#{params.to_json}');
        });
      </script>
    HERE
    html.html_safe
  end

end