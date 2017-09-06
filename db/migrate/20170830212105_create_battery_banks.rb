class CreateBatteryBanks < ActiveRecord::Migration[5.0]
  def change
    create_table :battery_banks do |t|
      t.string :nomenclatura
      t.string :marca
      t.integer :banco_baterias_type
      t.integer :num_celdas
      t.string :capacidad_ah
      t.string :volts_totales
      t.date :fecha_puesta_servicio

      t.timestamps
    end
  end
end
