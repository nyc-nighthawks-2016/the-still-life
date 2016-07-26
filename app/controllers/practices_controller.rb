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
    @bookmarks = Bookmark.new
  end

end
