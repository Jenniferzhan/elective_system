require File.join Rails.root, "app/uploaders/picture_uploader"
class Teacher < ApplicationRecord
  include SimpleCaptcha::ModelHelpers
  apply_simple_captcha
  has_many :line_items
  has_many :course, through: :line_items
  mount_uploader :picture, PictureUploader
  has_secure_password

end
