json.array!(@atendimentos) do |atendimento|
  json.extract! atendimento, :id, :categoria, :area, :data, :detalhes
  json.url atendimento_url(atendimento, format: :json)
end
