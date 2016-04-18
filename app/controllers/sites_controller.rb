class SitesController < ApplicationController
  def index
    @sites=Site.all
  end

  def show
    @site=Site.find(params[:id])
  end

  def new
  end

  def create
  end

end
