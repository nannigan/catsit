class AddAddressToUser < ActiveRecord::Migration
  def change
 
  	add_column :users, :address, :text
		add_index :users, :address

  end
end
