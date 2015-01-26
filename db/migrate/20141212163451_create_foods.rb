class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.text :item
      t.integer :minimum_amount

      t.timestamps
    end
  end
end
