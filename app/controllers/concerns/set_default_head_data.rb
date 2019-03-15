module SetDefaultHeadData
  extend ActiveSupport::Concern

  included do
    before_action :set_default_head_data
  end

  def set_default_head_data
    @page_title = "MyPage"
    @seo_keywords = ""
  end
end
