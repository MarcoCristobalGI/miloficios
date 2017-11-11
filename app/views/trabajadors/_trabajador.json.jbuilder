json.extract! trabajador, :id, :nombre, :apellidos, :oficio, :telefono, :direccion, :created_at, :updated_at
json.url trabajador_url(trabajador, format: :json)
