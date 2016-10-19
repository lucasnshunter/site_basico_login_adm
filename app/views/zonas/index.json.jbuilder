json.array!(@zonas) do |zona|
  json.extract! zona, :id, :cidade, :estado, :representante_id
  json.url zona_url(zona, format: :json)
end
