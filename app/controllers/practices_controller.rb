class PracticesController < ApplicationController
  def index
    @chants = Practice.chants
    @body_practices = Practice.body
    @seated_practices = Practice.seated
    @services = Practice.service
  end

  def show
  end

end
