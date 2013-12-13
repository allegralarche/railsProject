class AddPhoneToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :phone, :number
  end
end
