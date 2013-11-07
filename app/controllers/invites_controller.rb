class InvitesController < ApplicationController
  def new
    event = Event.find(params[:event_id])
    @invite = event.invites.build
  end

  def create
    render :text => params[:invite][:guest_list]
  end
end
