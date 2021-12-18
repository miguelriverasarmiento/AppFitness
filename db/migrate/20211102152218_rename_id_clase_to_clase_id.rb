class RenameIdClaseToClaseId < ActiveRecord::Migration[6.1]
  def change
    rename_column :reservas, :idClase, :clase_id
  end
end
