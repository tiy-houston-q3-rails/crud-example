class Taco < ActiveRecord::Base

  validates :name, presence: true
  validates :photo_url, presence: true
end
