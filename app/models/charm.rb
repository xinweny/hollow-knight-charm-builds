class Charm < ApplicationRecord
  mount_uploader :sprite, SpriteUploader

  has_many :combinations, dependent: :destroy
  has_many :builds, through: :combinations

  validates :name, presence: true
  validates :notches, presence: true, numericality: { only_integer: true }
  validates :description, presence: true
end
