class RemoveReferenceFromMeetups < ActiveRecord::Migration[6.1]
  def change
    remove_reference :meetups, :user, null: false, foreign_key: true
    remove_reference :meetups, :pet, null: false, foreign_key: true
    add_reference :meetups, :owner, foreign_key: { to_table: :users }
    add_reference :meetups, :custodian, foreign_key: { to_table: :users }
    add_reference :meetups, :pet, foreign_key: { to_table: :users }
  end
end
