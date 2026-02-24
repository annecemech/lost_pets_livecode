class Pet < ApplicationRecord
  SPECIES = %w[dog cat hamster bird]
  validates :name, presence: true
  validates :species, inclusion: { in: Pet::SPECIES }

  def found_days_ago
    (Date.today - found_on).to_i
  end
end
