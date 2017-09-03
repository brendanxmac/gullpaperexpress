class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :title
      t.string :location
      t.string :delivery_time
      t.text :details
      t.string :attachment
      t.string :status
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
