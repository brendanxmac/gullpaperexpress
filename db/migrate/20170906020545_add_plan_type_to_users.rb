class AddPlanTypeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :plan_type, :string
  end
end
