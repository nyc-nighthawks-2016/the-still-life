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

  def destroy
    deleted_bookmark = Bookmark.find(params[:id])
    Bookmark.find(params[:id]).destroy
    flash[:success] = "Bookmark removed"
    redirect_to practice_path(deleted_bookmark.resource.practice_id)
  end

end
