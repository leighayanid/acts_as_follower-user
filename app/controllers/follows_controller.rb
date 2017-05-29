class FollowsController < ApplicationController

	before_action :find_user

 def create
    current_user.follow(@user)
    redirect_to :back
  end

  def destroy
    current_user.stop_following(@user)
    redirect_to :back
  end

  private
  def find_user
    @user = User.find(params[:user_id])
  end
end
