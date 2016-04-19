class SiteStudiesController < ApplicationController
  def new
    p "HEEEEEEEYYYYOOO"
    p params
    @site = Site.find(params[:format])
    p @site
    @study_site = StudySiteJoin.new()
  end

  def create
    p "CREATE HERE"
    p params
    p params[:study_site_join][:study_id]
        @study_site = StudySiteJoin.new(site_id: params[:site_id], study_id: params[:study_site_join][:study_id])
        @site = Site.find(params[:site_id])
    if @study_site.save
        redirect_to @site
    else
      render :new
    end
  end

  # private
  #   def site_study_params
  #     params.require(:study_site_join).permit(:site_id, :study_id)
  #   end
end
