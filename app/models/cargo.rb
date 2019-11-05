class Cargo < ApplicationRecord
  belongs_to :personal
  validates :hasta, :desde, presence: true
end
