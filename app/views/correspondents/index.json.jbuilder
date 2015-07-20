json.array!(@correspondents) do |correspondent|
  json.extract! correspondent, :id
  json.url correspondent_url(correspondent, format: :json)
end
