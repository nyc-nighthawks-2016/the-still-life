class PracticesController < ApplicationController
  def index
    @chants = Practice.chants
    @body_practices = Practice.body
    @seated_practices = Practice.seated
    @services = Practice.service
  end

  def show
    @practice = Practice.find(params[:id])
    @chant_recording = Resource.recordings.find_by(practice_id: @practice.id)
    @bookmark = Bookmark.new
    @resources = Resource.where(practice_id: params[:id])
  end

end
