class AddOccasionToMenuContents < ActiveRecord::Migration
  def change
    add_column :menu_contents, :occasion, :string
  end
end
