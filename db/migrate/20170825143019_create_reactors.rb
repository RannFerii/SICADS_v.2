class CreateReactors < ActiveRecord::Migration[5.0]
  def change
    create_table :reactors do |t|
      t.string :nomenclatura
      t.integer :reactor_type
      t.string :marca
      t.string :num_serie
      t.integer :mva
      t.string :clase_enf
      t.integer :kv_nom_at
      t.integer :kv_nom_bt
      t.integer :kv_nom_terciario
      t.date :fecha_fabricacion
      t.date :fecha_puesta_servicio

      t.timestamps
    end
  end
end
