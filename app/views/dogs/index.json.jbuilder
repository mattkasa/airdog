json.array!(@dogs) do |dog|
  json.extract! dog, :id, :birthday, :gender, :human_id
  json.url dog_url(dog, format: :json)
end
