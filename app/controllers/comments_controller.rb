class CommentsController < ApplicationController
  before_filter :set_group
  before_filter :set_event, only: [:show]

  def index
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :location_id, :start_time, :end_time)
  end

  def set_group
    @group = Group.friendly.find(params[:group_id])
  end

  def set_event
    @event = @group.events.friendly.find(params[:id])
  end
end
