class RemoveReferenceFromMeetup < ActiveRecord::Migration[6.1]
  def change
    remove_reference :meetups, :owner
    remove_reference :meetups, :custodian
  end
end
