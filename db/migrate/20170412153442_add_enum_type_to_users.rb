class AddEnumTypeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_type, :integer
  end
end
