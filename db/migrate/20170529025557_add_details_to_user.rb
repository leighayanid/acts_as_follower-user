class AddDetailsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username, :string
    add_column :users, :full_name, :string
    add_column :users, :bio, :string
  end
end
