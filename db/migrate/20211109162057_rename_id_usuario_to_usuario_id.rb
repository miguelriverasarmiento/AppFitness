class RenameIdUsuarioToUsuarioId < ActiveRecord::Migration[6.1]
  def change
    rename_column :reservas, :idUsuario, :usuario_id
  end
end
