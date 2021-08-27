class CreateClases < ActiveRecord::Migration[6.1]
  def change
    create_table :clases do |t|
      t.string :nombre
      t.datetime :fecha
      t.integer :cupos

      t.timestamps
    end
  end
end
