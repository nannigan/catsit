class AddBreedDescQuirksToCats < ActiveRecord::Migration
  def change
  	add_column :cats, :breed, :string 
		add_column :cats, :description, :text
		add_column :cats, :quirks, :text
  end
end
