class AddDueDateToTasklists < ActiveRecord::Migration
  def change
    add_column :tasklists, :duedate, :datetime
  end
end
