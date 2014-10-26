json.array!(@humans) do |human|
  json.extract! human, :id, :birthday, :gender
  json.url human_url(human, format: :json)
end
