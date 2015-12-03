class ProfilesController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@event = Event.new
  end

  def index
  	@users = User.all
  end
end
