class ResourcesController < ApplicationController
  before_action :set_media_type

  def index
    @resources = media_type_class.all

    #For Future Resource Organization
    @yoga_res = media_type_class.where(practice_id: 15)
    @qigong_res = media_type_class.where(practice_id: 17)
    @food_res = media_type_class.where(practice_id: 20)
    @companionship_res = media_type_class.where(practice_id: 21)
    @assistance_res = media_type_class.where(practice_id: 22)
    @env_res = media_type_class.where(practice_id: 23)
    @animals_res = media_type_class.where(practice_id: 24)
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
