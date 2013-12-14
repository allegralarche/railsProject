class AddDuedateToTasklists < ActiveRecord::Migration
  def change
    add_column :tasklists, :duedate, :string
  end
end
