class EnrollmentsController < ApplicationController
  def new
    p params
    @study = Study.find(params[:format])
    @enrollment = Enrollment.new
  end

  def create
    p params
    p params[:study_id]
        @enrollment = Enrollment.new(study_id: params[:study_id], participant_id: params[:enrollment][:participant_id], site_id: params[:enrollment][:site_id])
        @study= Study.find(params[:study_id])
    if @enrollment.save
        redirect_to @study
    else
      render :new
    end
  end
end
