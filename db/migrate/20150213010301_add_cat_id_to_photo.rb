class AddCatIdToPhoto < ActiveRecord::Migration
  def change
  	add_column :photos, :cat_id, :integer
		add_index :photos, :cat_id
  end
end
