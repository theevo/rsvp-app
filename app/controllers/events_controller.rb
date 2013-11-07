class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    e = Event.create(valid_event_params)
    redirect_to new_event_invite_path(e)
  end

  def show
    @event = Event.find(params[:id])
  end

  private
    def valid_event_params
      params.require(:event).permit(:name, :time)
    end
end
