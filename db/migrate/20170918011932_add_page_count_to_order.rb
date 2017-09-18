class AddPageCountToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :page_count, :integer, default: 0
  end
end
