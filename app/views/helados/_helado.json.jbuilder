json.extract! helado, :id, :Nombre, :Descripcion, :Picture, :Precio, :created_at, :updated_at
json.url helado_url(helado, format: :json)