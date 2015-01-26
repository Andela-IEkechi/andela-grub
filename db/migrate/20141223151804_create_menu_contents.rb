class CreateMenuContents < ActiveRecord::Migration
  def change
    create_table :menu_contents do |t|
      t.references :day, index: true
      t.references :food, index: true

      t.timestamps
    end
  end
end
