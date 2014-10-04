class CreateAccommodations < ActiveRecord::Migration
  def change
    create_table :accommodations do |t|
        t.integer :owner_id
    	t.text :image
    	t.integer :bedroom
    	t.integer :bathroom
    	t.integer :carpark 
    	t.string :suburb
    	t.float :price 
    	t.string :detail
    	t.timestamps
    end
  end
end
