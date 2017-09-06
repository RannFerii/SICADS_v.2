class Switch < ApplicationRecord
  enum interruptor_type: ['Tipo I', 'Tipo T', 'Tipo Vacío', 'Tipo SF6', 'Tipo Tanque Muerto']
  enum mecanismo_type: ['Hidráulico', 'Neumático'  'Mecánico']
end
