class Teacher < ApplicationRecord
<<<<<<< HEAD
  has_many :line_items
  has_many :course, through: :line_items
  mount_uploader :picture, PictureUploader
  has_secure_password
  validates :password, length: { minimum: 6 }
=======
  has_secure_password
>>>>>>> dec7d54... The system has finished
end
