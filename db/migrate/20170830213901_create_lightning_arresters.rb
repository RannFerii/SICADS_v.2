class CreateLightningArresters < ActiveRecord::Migration[5.0]
  def change
    create_table :lightning_arresters do |t|
      t.string :nomenclatura
      t.integer :num_secciones
      t.integer :apartarrayos_type
      t.string :descarga_ka
      t.string :kv_sist
      t.string :marca
      t.string :num_serie
      t.date :fecha_fabricacion
      t.date :fecha_puesta_servicio

      t.timestamps
    end
  end
end
