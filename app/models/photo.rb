class Photo < ApplicationRecord
  belongs_to :album
  has_one_attached :img_data
  validates :img_data, presence: true
end
