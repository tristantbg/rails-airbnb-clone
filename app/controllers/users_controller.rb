class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @skill = @user.skills.first
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
