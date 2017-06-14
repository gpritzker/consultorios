json.extract! direccion, :id, :calle, :localidad, :nro, :piso, :entreCalles, :manzana, :lote, :created_at, :updated_at
json.url direccion_url(direccion, format: :json)
