class Ot < ApplicationRecord
  belongs_to :marca
  belongs_to :equipo
  belongs_to :reserva
  belongs_to :user
end
