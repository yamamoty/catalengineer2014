class ProfilesController < ApplicationController
  
  def index
    @profiles= Profile.all
  end

  def show
    @profiles = Profile.find(params[:id])
  end

  def new
    @profiles = Profile.new
  end

  def create
    @profiles = Profile.new(profile_params)
    if @profile.save 
      redirect_to @profile
    else
      render :new
    end
  end

  def profile_params
    params.require(:profile).permit(:name, :avatar)
  end


end
