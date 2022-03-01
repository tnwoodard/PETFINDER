class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :string
    add_column :users, :location, :string
    add_column :users, :date, :date
    add_column :users, :notes, :text
  end
end
