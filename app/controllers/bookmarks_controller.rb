class BookmarksController < ApplicationController

  def new
    @user = current_user
    @bookmark = Bookmark.new
  end

  def create
    @user = current_user
    @bookmark = @user.bookmarks.build(resource_id: params[:resource_id])

    if @bookmark.save
      if request.xhr?
        render '_bookmark_form', layout: false, locals: { }
      else
        redirect_to resources_path
      end
    else
      redirect_to resources_path
    end

    #unajaxed version
    # if bookmark.save
    #   flash[:success] = "Added to your bookmarks"
    #   redirect_to '/resources'
    # end
  end

  def destroy
    deleted_bookmark = Bookmark.find(params[:id])
    Bookmark.find(params[:id]).destroy
    flash[:success] = "Bookmark removed"
    redirect_to practice_path(deleted_bookmark.resource.practice_id)
  end

  def update

  end

end
