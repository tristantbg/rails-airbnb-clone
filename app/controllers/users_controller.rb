class UsersController < ApplicationController
  def index
      @users = User.all.in_location(params[:location])
      if params[:skill].present?
          @users = @users.reject{ |user| Skill.find_by(user_id: user.id).name.downcase != params[:skill].downcase }
      end
  end

  def show
    @freelancer = User.find(params[:id])
    @skills = ???
  end


end
