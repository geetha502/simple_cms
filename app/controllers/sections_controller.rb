class SectionsController < ApplicationController
  before_action :authenticate_admin_user!

      def index
        @sections  = Section.where(["visible = ?", false])
        @sections  = Section.order(:position)
      end

      def new
        @section =Section.new

      end


      def show
          @section  = Section.find(params[:id])

      end


      def create
        @section  = Section.new(section_params)
        if @section.save
          redirect_to sections_path
        else
          render 'new'
        end
      end


      def edit
        @section  = Section.find(params[:id])

      end



      def update
        @section  = Section.find(params[:id])

        if @section.update_attributes(section_params)
          redirect_to sections_path
        else
          render 'edit'
        end
      end


      def destroy

        @section  = Section.find(params[:id])
        if @section.destroy

            redirect_to sections_path
        end

      end


      protected

      def section_params
        params.require(:section).permit(:id, :page_id, :name, :position, :visible, :content_type, :content)
      end



end
