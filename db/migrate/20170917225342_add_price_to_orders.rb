class AddPriceToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :price, :float, default: 0.00
  end
end
