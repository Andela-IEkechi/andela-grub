class CreateBreakfastOrders < ActiveRecord::Migration
  def change
    create_table :breakfast_orders do |t|
      t.references :user, index: true
      t.references :menu_content, index: true

      t.timestamps
    end
  end
end
