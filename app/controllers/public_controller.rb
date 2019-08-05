class PublicController < ApplicationController
  skip_before_action :authenticate_admin_user!
  layout "public"
  def index
    # render "subjects/show"

    @subjects  = Subject.all

  end
  def show
      @subject  = Subject.find(params[:id])

  end

  def edit
    @pages  = Page.find(params[:id])

  end


end
