class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
    	t.string :firstname
    	t.string :lastname
    	t.integer :contact
    	t.string :email
    	t.text :image 
    	t.timestamps
    end
  end
end
