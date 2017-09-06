class CreateMeasurementEquipments < ActiveRecord::Migration[5.0]
  def change
    create_table :measurement_equipments do |t|
      t.integer :equipo_medicion_type
      t.string :modelo
      t.string :marca
      t.string :num_serie
      t.string :num_inv_eimp

      t.timestamps
    end
  end
end
