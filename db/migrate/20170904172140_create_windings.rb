class CreateWindings < ActiveRecord::Migration[5.0]
  def change
    create_table :windings do |t|
      t.integer :devanado_type
      t.string :devanado_kv
      t.string :porcentaje_z
      t.string :z_mva
      t.string :z_kv
      t.integer :conexion_type
      t.belongs_to :phase, foreign_key: true

      t.timestamps
    end
  end
end
