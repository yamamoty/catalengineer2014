class GroupsController < ApplicationController

  def index
    @group = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to @group
    else
      render :new
    end
  end

  def group_params
    params.require(:group).permit(:name)
  end

end
