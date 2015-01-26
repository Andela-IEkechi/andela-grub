class LunchOrder < ActiveRecord::Base
  belongs_to :user
  belongs_to :menu_content
  has_many :foods, through: :menu_content, class_name: 'Food'
end
