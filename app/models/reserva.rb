class Reserva < ApplicationRecord
    has_one :clase 
    has_one :usuario
    belongs_to :usuario
    belongs_to :clase

    validates :usuario_id, presence: true
    validates :clase_id, presence: true
    validates :fecha, presence: true
end
