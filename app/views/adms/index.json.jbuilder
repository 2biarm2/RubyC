json.array!(@adms) do |adm|
  json.extract! adm, :id, :nome, :senha, :registro
  json.url adm_url(adm, format: :json)
end