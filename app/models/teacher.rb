class Teacher < ApplicationRecord
  include SimpleCaptcha::ModelHelpers
 apply_simple_captcha
  has_many :line_items
  has_many :course, through: :line_items
  mount_uploader :picture, PictureUploader
  validates :password, length: { minimum: 6 }
  has_secure_password

end
