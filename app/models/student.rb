require File.join Rails.root, "app/uploaders/picture_uploader"
class Student < ApplicationRecord
<<<<<<< HEAD
<<<<<<< HEAD
  attr_accessor :reset_token
  validates :name, presence: true, uniqueness: true 
  mount_uploader :picture, PictureUploader
  has_secure_password
  #validates :password, length: { minimum: 6 }
=======
  mount_uploader :picture, PictureUploader
  has_secure_password
>>>>>>> dec7d54... The system has finished
=======
  mount_uploader :picture, PictureUploader
  has_secure_password
>>>>>>> dec7d54... The system has finished
  has_many :line_items
  has_many :courses, through: :line_items

  def create_reset_digest
<<<<<<< HEAD
<<<<<<< HEAD
   str = ""
   8.times do |i|
     str = str << rand(100).to_s
   end
   update_attribute(:reset_digest, str)
   str
=======
>>>>>>> dec7d54... The system has finished
=======
>>>>>>> dec7d54... The system has finished
  end

end
