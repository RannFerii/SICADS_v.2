class CreatePhases < ActiveRecord::Migration[5.0]
  def change
    create_table :phases do |t|
      t.integer :fase
      t.string :marca
      t.string :num_serie
      t.date :fecha_fabricacion
      t.string :relacion_transformacion
      t.string :capacidad_transformacion
      t.string :capacitancia_total
      t.integer :masa_embarque
      t.integer :esquema_nucleo
      t.integer :total_aceite
      t.string :sistema_enfriamiento
      t.boolean :mampara
      t.integer :num_taps
      t.string :sistema_contra_incendios
      t.string :fosa_captadora_aceite
      t.string :tension_sistema
      t.string :clase_exactitud
      t.string :tipo_expancion_aceite
      t.string :tipo_envolvente
      t.string :mva
      t.date :fecha_puesta_servicio
      t.belongs_to :transformer, foreign_key: true

      t.timestamps
    end
  end
end
