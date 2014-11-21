class CreateSwappers < ActiveRecord::Migration
  def change
    create_table :swappers do |t|
			t.string :name
			t.integer :zip
      t.timestamps
    end
  end
end
