class MenuContent < ActiveRecord::Base
  belongs_to :day
  belongs_to :food
  belongs_to :breakfast_order
  belongs_to :lunch_order
  belongs_to :dinner_order

  validates :day_id, presence: true, numericality: true
  validates :food_id, presence: true, numericality: true

  OCCASION = ['Breakfast', 'Lunch', 'Dinner']

  def food_item
    food.item
  end
end
