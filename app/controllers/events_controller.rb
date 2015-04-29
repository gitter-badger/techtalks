class EventsController < ApplicationController
  before_filter :set_group
  before_filter :set_event, only: [:show]
  before_filter :set_events, only: [:index]

  def index
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.group_id = @group.id

    if @event.save
      redirect_to [@group, @event]
    else
      flash[:error] = "The event can not be created"
      redirect_to :back
    end
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

  def set_events
    @event = @group.events
  end
end
