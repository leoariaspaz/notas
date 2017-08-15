json.extract! nota, :id, :titulo, :cuerpo, :categoria_id, :created_at, :updated_at
json.url nota_url(nota, format: :json)
