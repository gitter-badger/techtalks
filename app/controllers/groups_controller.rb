class GroupsController < ApplicationController
  before_filter :set_group, only: [:show]

  def index
  end

  def show
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to @group
    else
      flash[:error] = "The group can not be created"
      redirect_to :back
    end
  end

  private

  def group_params
    params.require(:group).permit(:title, :description, :website_url, :youtube_url, :twitter_url, :facebook_url, :meetup_url)
  end

  def set_group
    @group = Group.friendly.find(params[:id])
  end
end
