class Combination < ApplicationRecord
  belongs_to :charm
  belongs_to :build

  validates :charm_id, presence: true, uniqueness: { scope: :build_id }
end
