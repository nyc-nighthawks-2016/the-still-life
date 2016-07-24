class PracticesController < ApplicationController
  def index
    @chants = Practice.chants.paginate(page: params[:page])
    @body_practices = Practice.body.paginate(page: params[:page])
    @seated_practices = Practice.seated.paginate(page: params[:page])
    @services = Practice.service.paginate(page: params[:page])
  end

  def show
    @practice = Practice.find(params[:id])
  end

end
