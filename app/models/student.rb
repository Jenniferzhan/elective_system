require File.join Rails.root, "app/uploaders/picture_uploader"
class Student < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_secure_password
  has_many :line_items
  has_many :courses, through: :line_items

  def create_reset_digest
  end

end
