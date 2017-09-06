class CreateTransformers < ActiveRecord::Migration[5.0]
  def change
    create_table :transformers do |t|
      t.string :nomenclatura
      t.integer :transformador_type
      t.string :phase_type
      t.string :numero_activo_fijo
      t.date :fecha_puesta_servicio

      t.timestamps
    end
  end
end
