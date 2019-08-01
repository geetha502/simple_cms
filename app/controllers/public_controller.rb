class PublicController < ApplicationController
  skip_before_action :authenticate_admin_user!
  layout "public"
  def index
    # render "subjects/show"
    
    @subjects  = Subject.all
  end
end
