json.array!(@referencetypes) do |referencetype|
  json.extract! referencetype, :id, :type_of_literatur
  json.url referencetype_url(referencetype, format: :json)
end
