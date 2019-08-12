class Build < ApplicationRecord
  has_many :combinations, dependent: :destroy
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

  def self.search(search)
    return Build.all unless search

    @builds = Build.joins(:combinations).joins(:charms).where('builds.name ILIKE ? OR charms.name ILIKE ?', "%#{search}%", "%#{search}%")
  end
end
