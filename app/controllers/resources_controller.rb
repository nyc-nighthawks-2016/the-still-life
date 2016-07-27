class ResourcesController < ApplicationController
  before_action :set_media_type

  def index
    @resources = media_type_class.all
    @bookmark = Bookmark.new

    #For Future Resource Organization
    @yoga_res = media_type_class.where(practice: Practice.find_by(name: "Yoga Asana (Studio)"))
    @qigong_res = media_type_class.where(practice: Practice.find_by(name: "QiGong (Studio)"))
    @food_res = media_type_class.where(practice: Practice.find_by(name: "Food"))
    @companionship_res = media_type_class.where(practice: Practice.find_by(name: "Companionship"))
    @assistance_res = media_type_class.where(practice: Practice.find_by(name: "Assistance"))
    @env_res = media_type_class.where(practice: Practice.find_by(name: "Environmental Care"))
    @animals_res = media_type_class.where(practice: Practice.find_by(name: "Animals"))
  end

  def show
    @resource = media_type_class.find(params[:id])
  end


private

 def set_media_type
    @media_type = media_type
 end

 def media_type
     Resource.types.include?(params[:type]) ? params[:type] : "Resource"
 end

 def media_type_class
     media_type.constantize
 end

end
