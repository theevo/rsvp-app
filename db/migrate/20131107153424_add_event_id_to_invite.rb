class AddEventIdToInvite < ActiveRecord::Migration
  def change
    add_column :invites, :event_id, :integer
  end
end
