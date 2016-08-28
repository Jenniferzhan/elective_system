Student
  has_many :courses, through: line_items

LineItem
  belongs_to :course
  belongs_to :student

Course
  has_many :line_items
  has_many :students, through: line_items
