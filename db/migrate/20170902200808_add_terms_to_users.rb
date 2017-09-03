class AddTermsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :terms_and_conditions, :boolean
  end
end
