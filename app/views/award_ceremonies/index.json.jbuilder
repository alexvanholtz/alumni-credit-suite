json.array!(@award_ceremonies) do |award_ceremony|
  json.extract! award_ceremony, :id, :ceremony, :isMajor
  json.url award_ceremony_url(award_ceremony, format: :json)
end
