class RemoveKittyPicFrCats < ActiveRecord::Migration
  def change
  	remove_column :cats, :kitty_pic
  end
end
