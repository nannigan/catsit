class DropTable < ActiveRecord::Migration
  def change
  	drop_table :swappers
  end
end
