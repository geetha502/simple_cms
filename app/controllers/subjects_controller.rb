class SubjectsController < ApplicationController
  before_action :authenticate_admin_user!
  def index
      @subjects  = Subject.where(["visible = ?", false])
      @subjects  = Subject.order(:position)

  end

  def new
    @subject =Subject.new

  end


    def show
      @subject  = Subject.find(params[:id])

    end


  def create
    @subject  = Subject.new(subject_params)
    if @subject.save
      redirect_to subjects_path
    else
      render 'new'
    end
  end



  def edit
      @subject  = Subject.find(params[:id])
  end



  def update
    @subject  = Subject.find(params[:id])

    if @subject.update_attributes(subject_params)
      redirect_to subjects_path
    else
      render 'edit'
    end
  end


  def destroy
    @subject  = Subject.find(params[:id])
    if @subject.destroy

        redirect_to subjects_path

      end
    end




  protected

  def subject_params
    params.require(:subject).permit(:name, :position, :visible)
  end



end
