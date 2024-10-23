class AddUserColorToUser < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :user_color, :string
  end
end
