class InvitesController < ApplicationController
  def new
    event = Event.find(params[:event_id])
    @invite = event.invites.build
  end

  def create
    event_id = valid_event_params[:event_id]
    guest_array = parse_guests(valid_event_params[:guest_list])
    guest_array.each do |g|
      user = User.find_or_create_by(:name => g)
      Invite.create(
        :guest_id => user.id,
        :event_id => event_id)
    end
  end

  private
    def valid_event_params
      params.require(:invite).permit(:guest_list, :event_id)
    end

    def parse_guests(guest_list)
      guest_list.split(",").map { |g| g.strip }
    end
end
