json.array!(@plots) do |plot|
  json.extract! plot, :id, :content
  json.url plot_url(plot, format: :json)
end
