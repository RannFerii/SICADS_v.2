class CreateCalibrations < ActiveRecord::Migration[5.0]
  def change
    create_table :calibrations do |t|
      t.date :fecha_calibracion
      t.date :fecha_vencimiento
      t.belongs_to :measurement_equipment, foreign_key: true

      t.timestamps
    end
  end
end
