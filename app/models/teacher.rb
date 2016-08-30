class Teacher < ApplicationRecord
  has_many :line_items
  has_many :course, through: :line_items
  has_secure_password
  validates :password, length: { minimum: 6 }
end
