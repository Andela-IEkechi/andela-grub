class Day < ActiveRecord::Base
  has_many :menu_contents
  has_many :foods, through: :menu_content, class_name: 'Food'
end
