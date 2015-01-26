class AddFoods < ActiveRecord::Migration
  def self.up
    Food.create!(item:  'Jollof rice',minimum_amount:100)
    Food.create!(item:  'French fries',minimum_amount:100)
    Food.create!(item:  'Ewa aganyin (Beans)',minimum_amount:100)
    Food.create!(item:  'Fried plantain',minimum_amount:50)
    Food.create!(item:  'Chicken',minimum_amount:200)
    Food.create!(item:  'Turkey',minimum_amount:200)
    Food.create!(item:  'Fried fish - Kote',minimum_amount:100)
    Food.create!(item:  'Fried fish - Croaker',minimum_amount:150)
    Food.create!(item:  'Titus fish - Not fried',minimum_amount:100)
    Food.create!(item:  'Stir fried spaghetti',minimum_amount:100)
    Food.create!(item:  'Coleslaw',minimum_amount:50)
    Food.create!(item:  'Beef',minimum_amount:50)
    Food.create!(item:  'Boiled egg​',minimum_amount:50)
    Food.create!(item:  'Boiled yam + egg sauce',minimum_amount:100)
    Food.create!(item:  'Efo riro (Green vegetables)',minimum_amount:100)
    Food.create!(item:  'Pounded yam',minimum_amount:100)
    Food.create!(item:  'Fried rice ',minimum_amount:100)
    Food.create!(item:  'Spaghetti',minimum_amount:100)
    Food.create!(item:  'White rice with regular stew',minimum_amount:100)
    Food.create!(item:  'White rice with ofada stew',minimum_amount:100)
    Food.create!(item:  'Yam pottage',minimum_amount:100)
    Food.create!(item:  'Semovita + Egusi soup',minimum_amount:300)
  end

  def self.down
    country = Food.find.all
    country.destroy
  end
end
