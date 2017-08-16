class UsersController < ApplicationController
  def show
   @user = User.find(params[:id])
  end
  def index
      @users = User.all.in_location(params[:location])
      if params[:skill].present?
          @users = @users.reject{ |user| Skill.find_by(user_id: user.id).name.downcase != params[:skill].downcase }
      end
  def show
   @user = User.find(params[:id])
  end
  end
end
