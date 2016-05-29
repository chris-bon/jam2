class AddUserIdAndUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile_id, :integer
    add_column :users, :username, :string
  end
end
