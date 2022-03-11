class AddColumnToPets < ActiveRecord::Migration[6.1]
  def change
    add_column :pets, :sex, :string
    add_column :pets, :latitude, :float
    add_column :pets, :longitude, :float
  end
end
