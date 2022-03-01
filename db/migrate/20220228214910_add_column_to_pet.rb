class AddColumnToPet < ActiveRecord::Migration[6.1]
  def change
    add_column :pets, :species, :string
    add_column :pets, :name, :string
    add_column :pets, :age, :integer
    add_column :pets, :color, :string
    add_column :pets, :location, :text
    add_column :pets, :description, :text
    add_column :pets, :date_found, :date
    add_column :pets, :has_id, :boolean
    add_column :pets, :status, :string
  end
end
