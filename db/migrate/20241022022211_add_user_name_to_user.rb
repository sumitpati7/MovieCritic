class AddUserNameToUser < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :user_name, :string
  end
end
