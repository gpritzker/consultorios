json.extract! paciente, :id, :nombre, :dni, :email, :telefono, :cobertura, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
