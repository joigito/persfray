class Movimiento < ApplicationRecord
  belongs_to :Personal
  validates :fecha_hasta, :fecha_desde, presence: true

end
