class AddDuedateToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :duedate, :string
  end
end
