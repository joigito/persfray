json.extract! movimiento, :id, :personal_id, :fecha_desde, :fecha_hasta, :motivo, :con_aviso, :justificado, :created_at, :updated_at
json.url movimiento_url(movimiento, format: :json)
