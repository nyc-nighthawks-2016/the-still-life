class UsersController < ApplicationController
  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find_by(id: params[:id])
    not_found if !@user
  end

  def new
    redirect_to current_user if logged_in?
    @user = User.new
  end

  def create
    redirect_to current_user if logged_in?
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        log_in @user
        flash[:success] = "User was successfully created."
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    current_user
    @user = User.find(params[:id])
    not_found if @user != @current_user
  end

  def update
    current_user
    @user = User.find(params[:id])
    not_found if @user != @current_user
    respond_to do |format|
      if @user.update(user_params)
        flash[:success] = "Profile successfully updated."
        format.html { redirect_to @user, notice: "User was successfully edited." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :about_me, :age, :gender)
  end

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end
end
