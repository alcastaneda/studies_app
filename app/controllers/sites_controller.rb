class SitesController < ApplicationController
  def index
    @sites=Site.all
  end

  def show
    @site=Site.find(params[:id])
  end

  def new
    @site = Site.new
  end

  def create
      @site = Site.new(site_params)
    #If site does save redirect to show
    if @site.save
        redirect_to @site
    else
      render :new
    end
  end

  private
  def site_params
    params.require(:site).permit(:name, :location)
  end
end
