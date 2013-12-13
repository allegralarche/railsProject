class AddFriendToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :friend, :string
  end
end
