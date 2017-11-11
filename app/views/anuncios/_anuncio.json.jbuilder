json.extract! anuncio, :id, :titulo, :contenido, :fecha, :requisitos, :vacante, :created_at, :updated_at
json.url anuncio_url(anuncio, format: :json)
