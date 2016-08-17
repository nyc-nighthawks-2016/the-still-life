class ResourcesController < ApplicationController
  before_action :set_media_type

  def index
    @resources = media_type_class.all

    #Is this right? Having a random Bookmark.new as a placeholder so that
    #bookmark form works?
    @bookmark = Bookmark.new

    #For Future Resource Organization
    @yoga_res = media_type_class.where(practice: Practice.find_by(name: "Yoga Asana"))
    @qigong_res = media_type_class.where(practice: Practice.find_by(name: "QiGong"))
    @food_res = media_type_class.where(practice: Practice.find_by(name: "Food"))
    @companionship_res = media_type_class.where(practice: Practice.find_by(name: "Companionship"))
    @assistance_res = media_type_class.where(practice: Practice.find_by(name: "Assistance"))
    @env_res = media_type_class.where(practice: Practice.find_by(name: "Environmental Care"))
    @animals_res = media_type_class.where(practice: Practice.find_by(name: "Animals"))
  end

  def show
    @resource = media_type_class.find(params[:id])
  end

  def new
    if logged_in?
      @resource = Resource.new
    else
      redirect_to root_path
    end
  end

  def create
    @user = current_user
    @resource = Resource.new(resource_params)
      if @resource.save
        @bookmark = @user.bookmarks.build(resource_id: @resource.id)
        @bookmark.save
        redirect_to current_user
      else
        render 'new'
      end
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

 def resource_params
   params.require(:resource).permit(:name, :category, :description, :url, :upload)
 end

end
