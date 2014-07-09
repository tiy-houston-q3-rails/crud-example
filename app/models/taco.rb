class Taco < ActiveRecord::Base

  mount_uploader :photo, PhotoUploader


  validates :name, presence: true
  validates :photo, presence: true
end
