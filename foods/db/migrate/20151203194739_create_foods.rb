class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|

    	t.string "name"
    	t.text "description"
    	t.text "thoughts"
    	t.text "img_url"
    end
  end
end
