class AddZipNameVisitHousesitToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :full_name, :string 
		add_column :users, :zip, :integer
		add_column :users, :visit, :boolean
		add_column :users, :housesit, :boolean
  end
end
