class ChangeUserIdToProfileId < ActiveRecord::Migration
  def change
    remove_column :users, :user_id, :integer
    add_column :users, :profile_id, :integer
  end
end
