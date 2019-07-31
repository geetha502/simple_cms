module ApplicationHelper
  def get_visibility_status visible
    status = visible == true ? "unpublished" : "draft"
  end

end
