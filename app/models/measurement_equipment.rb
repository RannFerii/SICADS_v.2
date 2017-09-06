class MeasurementEquipment < ApplicationRecord
  has_many :calibrations
  enum equipo_medicion_type: ['Termómetros', 'Multímetro','Densimetro','Volmetro' ,'Medidor de Factor de Potencia','Medidor de Resistencia de Aislamiento','Resistencia Óhmnica de devanado','Medidor de Rigidez Dieléctrica','Medidor Resistencia de Devanado','Corriente de Exitación','Tiempo de Sincronismo']
end
