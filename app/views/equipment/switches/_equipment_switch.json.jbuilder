json.extract! equipment_switch, :id, :nomenclatura, :interruptor_type, :mecanismo_type, :marca, :voltaje_control, :tension_fuerza, :tension_sistema, :num_serie, :kv_nom, :amp_nom, :capacidad_interruptiva, :nivel_basico_impulso, :medio_ext, :fecha_fabricacion, :fecha_puesta_servicio, :created_at, :updated_at
json.url equipment_switch_url(equipment_switch, format: :json)
