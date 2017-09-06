class CreateSwitches < ActiveRecord::Migration[5.0]
  def change
    create_table :switches do |t|
      t.string :nomenclatura
      t.integer :interruptor_type
      t.integer :mecanismo_type
      t.string :marca
      t.string :voltaje_control
      t.string :tension_fuerza
      t.string :tension_sistema
      t.string :num_serie
      t.string :kv_nom
      t.string :amp_nom
      t.string :capacidad_interruptiva
      t.string :nivel_basico_impulso
      t.string :medio_ext
      t.date :fecha_fabricacion
      t.date :fecha_puesta_servicio

      t.timestamps
    end
  end
end
