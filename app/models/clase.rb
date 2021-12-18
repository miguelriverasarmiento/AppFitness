class Clase < ApplicationRecord
    
    has_many :reservas, dependent: :destroy
    has_many :usuarios
    belongs_to :usuario
    belongs_to :reserva

    validates :nombre, presence: true
    validates :fecha, presence: true
    validates :cupos, presence: true
end
