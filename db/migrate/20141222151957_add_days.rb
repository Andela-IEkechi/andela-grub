class AddDays < ActiveRecord::Migration
  def self.up
    Day.create!(day: 'Monday')
    Day.create!(day: 'Tuesday')
    Day.create!(day: 'Wednesday')
    Day.create!(day: 'Thursday')
    Day.create!(day: 'Friday')

  end

  def self.down
    day = Day.find.all
    day.destroy
  end
end
