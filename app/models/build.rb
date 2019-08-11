class Build < ApplicationRecord
  has_many :combinations
  has_many :charms, through: :combinations

  validates :name, presence: true, uniqueness: true

  def notches
    notches = 0
    charms.each { |charm| notches += charm.notches }
    notches
  end

  def overcharmed?
    notches > 11
  end
end
