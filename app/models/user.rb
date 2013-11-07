class User < ActiveRecord::Base
  has_many :guest_invitations, :class_name => Invite, :foreign_key => :guest_id
end
