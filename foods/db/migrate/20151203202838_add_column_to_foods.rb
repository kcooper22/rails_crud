class AddColumnToFoods < ActiveRecord::Migration
  def change
  	add_reference(:foods, :user)
  end
end
