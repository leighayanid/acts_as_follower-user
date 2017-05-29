class FollowsController < ApplicationController

	# before_action :find_user

 def create
    @user = User.find(params[:user_id])
    current_user.follow(@user)
    redirect_to :back
  end

  def destroy
    @user = User.find(params[:user_id])
    current_user.stop_following(@user)
    redirect_to :back
  end

  # private
  # def find_user
  # end
end
