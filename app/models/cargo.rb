class Cargo < ApplicationRecord
  belongs_to :personal
  validates :fecha_hasta, :fecha_desde, presence: true
end
