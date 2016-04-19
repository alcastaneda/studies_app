class StudiesController < ApplicationController
  def index
    @study = Study.new
    @studies = Study.all
  end

  def show
    @study = Study.find(params[:id])
    @participants = @study.participants
  end

  def new
    @study= Study.new
  end

  def create
    @study = Study.new(study_params)
    if @study.save
        redirect_to @study
    else
      render :new
    end
  end

    private
      def study_params
        params.require(:study).permit(:title, :investigator_name, :status)
      end
end
