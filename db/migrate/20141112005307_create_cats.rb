class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
    	t.string :catHuman
			t.string :catName
      t.timestamps
    end
  end
end
