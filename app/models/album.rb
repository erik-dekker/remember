class Album < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy
  validates :title, presence: true, length: { minimum: 3}
end
