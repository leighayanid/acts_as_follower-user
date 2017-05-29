class UsersController < ApplicationController

	before_action :authenticate_user!
	before_action :find_user, except: :index

  def index
  	@users = User.all
  end

  def show
  end

  private 
  def find_user
  	@user = User.find(params[:id])
  end

end
