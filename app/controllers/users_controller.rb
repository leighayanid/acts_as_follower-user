class UsersController < ApplicationController

	before_action :authenticate_user!, except: :index
	before_action :find_user

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
