class BookmarksController < ApplicationController

  def new 
    @bookmarks = Bookmark.new
  end

  def create
    @user = current_user
    bookmark = @user.bookmarks.build(resource_id: params[:resource_id]) 
    if bookmark.save
      flash[:success] = "Added to your bookmarks"
      redirect_to '/resources'
    end
  end

end
