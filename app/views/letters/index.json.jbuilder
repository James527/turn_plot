json.array!(@letters) do |letter|
  json.extract! letter, :id, :send_to, :subject, :content
  json.url letter_url(letter, format: :json)
end
