class UserData < ActiveRecord::Migration
  def up
    add_column :users, :zip,  :string
    add_column :users, :facebook,  :string
    add_column :users, :twitter,  :string
    add_column :users, :username,  :string
  end

  def down
    remove_column :users, :zip
    remove_column :users, :facebook
    remove_column :users, :twitter
    remove_column :users, :username
  end
end
