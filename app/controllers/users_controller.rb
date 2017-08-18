class UsersController < ApplicationController

  def show
    if user_signed_in?
      @user = User.find(params[:id])
      @skill = @user.skills.first
    else
      redirect_to new_user_session_path
    end
  end

  def index
    @users = User.all
    if params[:address].present?
      @users = @users.near(params[:address], 10)
    end
    if params[:skill].present?
      @users = @users.reject{ |user| user.skills.first.name.downcase != params[:skill].downcase }
    end
  end

end
