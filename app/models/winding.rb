class Winding < ApplicationRecord
  belongs_to :phase
  enum devanado_type: ['Alta','Baja','Terciario']
  enum conexion_type: ['Y','Δ']
end
