class CreateAdvertisements < ActiveRecord::Migration[5.0]
  def change
    create_table :advertisements do |t|
      t.string :name 
      t.string  :description 
      t.integer :price 
      t.string :ubication
      t.string :phone 
      t.timestamps
    end
  end
end
