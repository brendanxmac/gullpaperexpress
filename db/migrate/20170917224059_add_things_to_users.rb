class AddThingsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :gender, :string
    add_column :users, :first_order, :boolean, default: true
  end
end
