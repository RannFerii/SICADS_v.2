class CreateBlades < ActiveRecord::Migration[5.0]
  def change
    create_table :blades do |t|
      t.string :nomenclatura
      t.integer :cuchilla_type
      t.integer :mecanismo_type
      t.string :nivel_basico_impulso
      t.string :marca
      t.string :num_serie
      t.string :kv_nom
      t.string :amp_nom
      t.string :tension_sistema
      t.date :fecha_puesta_servicio
      t.date :fecha_fabricacion
      t.belongs_to :bay, foreign_key: true

      t.timestamps
    end
  end
end
