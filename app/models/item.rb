class Item < ActiveRecord::Base
  validates :name, presence: true
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :description, length: { maximum: 255 }
end
