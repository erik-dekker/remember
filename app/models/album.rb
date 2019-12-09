class Album < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 3}
  mount_uploaders :photos, PhotoUploader
  serialize :photos, JSON
end
