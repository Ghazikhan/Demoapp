class UsersController < ApplicationController
  def index
  end

  def new
  end

  def show
  	@user = User.find(params[:id])
  	@userinfo = Userinfo.new
  	#@userinfo = Userinfo.find(params[:id])
  end
end
