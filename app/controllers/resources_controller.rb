class ResourcesController < ApplicationController
  before_action :set_media_type

  def index
    @resources = media_type_class.all
  end

  def show
    @resource = media_type_class.find(params[:id])
    binding.pry
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
