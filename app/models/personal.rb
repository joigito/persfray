class Personal < ApplicationRecord
  has_many :movimientos
  validates :documento, :apeynom, :fecnac, :fecing, presence: true
  def apeynom=(s)
    write_attribute(:apeynom, s.to_s.titleize) # The to_s is in case you get nil/non-string
  end
  def self.search(search)
    where("apeynom ILIKE ?", "%#{search}%")
    #where("content LIKE ?", "%#{search}%")
  end
end
