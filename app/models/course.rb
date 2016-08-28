class Course < ApplicationRecord
  has_many :line_items
  has_many :students, through: :line_items
  MAXIMUM = 5

end
