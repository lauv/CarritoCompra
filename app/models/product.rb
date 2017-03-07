class Product < ApplicationRecord
  validates :name, presence: true
  belongs_to :category
  has_many :orders
  mount_uploader :photo, PhotoUploader
end
