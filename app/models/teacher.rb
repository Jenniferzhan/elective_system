class Teacher < ApplicationRecord
<<<<<<< HEAD
  has_many :line_items
  has_many :course, through: :line_items
  mount_uploader :picture, PictureUploader
  validates :password, length: { minimum: 6 }
<<<<<<< HEAD
=======
>>>>>>> dec7d54... The system has finished
=======
>>>>>>> cddd5d8d8b71a86d48195d53a4155a0e8a604eb8
  has_secure_password
end
