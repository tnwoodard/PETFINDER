class RemoveUserFromPets < ActiveRecord::Migration[6.1]
  def change
    remove_reference :pets, :user, null: false, foreign_key: true
    add_reference :pets, :owner, foreign_key: { to_table: :users }
    add_reference :pets, :custodian, foreign_key: { to_table: :users }
  end
end
