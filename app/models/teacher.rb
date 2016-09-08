class Teacher < ApplicationRecord
<<<<<<< HEAD
  has_many :line_items
  has_many :course, through: :line_items
  mount_uploader :picture, PictureUploader
  validates :password, length: { minimum: 6 }
=======
>>>>>>> dec7d54... The system has finished
  has_secure_password
end
