class Reserva < ApplicationRecord
    belongs_to :usuario
    belongs_to :clase
end
