class AddVenmoNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :venmo_name, :string
  end
end
