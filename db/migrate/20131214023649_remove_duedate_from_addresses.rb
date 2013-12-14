class RemoveDuedateFromAddresses < ActiveRecord::Migration
  def change
    remove_column :addresses, :duedate, :string
  end
end
