class Clase < ApplicationRecord
    has_many :usuario
    has_many :reserva
end
