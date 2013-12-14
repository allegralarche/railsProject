class RemoveDuedateFromTasklists < ActiveRecord::Migration
  def change
    remove_column :tasklists, :duedate, :datetime
  end
end
