class CreateSubstations < ActiveRecord::Migration[5.0]
  def change
    create_table :substations do |t|
      t.string :nombre_subestacion
      t.string :subestacion_abbr
      t.string :direccion
      t.float :latitude
      t.float :longitude
      t.string :extencion
      t.string :encargado_nombre
      t.string :encargado_apellidos
      t.string :capacidad
      t.date :fecha_puesta_servicio

      t.timestamps
    end
  end
end
