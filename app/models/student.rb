require File.join Rails.root, "app/uploaders/picture_uploader"
class Student < ApplicationRecord
  include SimpleCaptcha::ModelHelpers
 apply_simple_captcha
  attr_accessor :reset_token
  validates :name, presence: true, uniqueness: true 
  mount_uploader :picture, PictureUploader
  has_secure_password
  #validates :password, length: { minimum: 6 }
  has_many :line_items
  has_many :courses, through: :line_items

  def create_reset_digest
   str = ""
   8.times do |i|
     str = str << rand(100).to_s
   end
   update_attribute(:reset_digest, str)
   str
  end

end
