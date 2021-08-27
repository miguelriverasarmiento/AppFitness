class CreateReservas < ActiveRecord::Migration[6.1]
  def change
    create_table :reservas do |t|
      t.integer :idUsuario
      t.integer :idClase
      t.datetime :fecha

      t.timestamps
    end
  end
end
