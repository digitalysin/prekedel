class AddSomeAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :is_admin, :boolean, default: false

    add_index :users, :username
    add_index :users, :email
  end
end
