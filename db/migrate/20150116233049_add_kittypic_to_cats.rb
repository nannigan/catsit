class AddKittypicToCats < ActiveRecord::Migration
  def change
  	add_column :cats, :kitty_pic, :string
		add_index :cats, :kitty_pic
  end
end
