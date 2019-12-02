class Album < ApplicationRecord
  belongs_to :user
  has_many :photos

  validates :title, presence: true, length: { minimum: 3}
end
