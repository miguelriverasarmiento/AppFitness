class CreateReservas < ActiveRecord::Migration[6.1]
  def change
    create_table :reservas do |t|
      t.integer :usuario_id
      t.integer :clase_id
      t.datetime :fecha

      t.timestamps
    end
  end
end
