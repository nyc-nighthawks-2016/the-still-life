class PracticesController < ApplicationController
  def index
    @chants = Practice.chants.paginate(page: params[:page], :per_page => 3)
    @body_practices = Practice.body.paginate(page: params[:page], :per_page => 3)
    @seated_practices = Practice.seated.paginate(page: params[:page], :per_page => 3)
    @services = Practice.service.paginate(page: params[:page], :per_page => 3)
  end

  def show
    @practice = Practice.find(params[:id])
  end

end
