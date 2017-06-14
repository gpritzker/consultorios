json.extract! historia_clinica, :id, :profesional_id, :practica_id, :especialidad_id, :paciente_id, :created_at, :updated_at
json.url historia_clinica_url(historia_clinica, format: :json)
