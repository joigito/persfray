class Movimiento < ApplicationRecord
  belongs_to :personal
  validates :fecha_hasta, :fecha:desde, presence: true

end
