class RemoveMinimumAmountFromFoods < ActiveRecord::Migration
  def change
    remove_column :foods, :minimum_amount, :integer
  end
end
