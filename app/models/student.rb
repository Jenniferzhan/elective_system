class Student < ApplicationRecord
  has_secure_password
  has_many :course, dependent: :destroy
end
