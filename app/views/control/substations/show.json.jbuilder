
json.array!(['control',@substations) do |substation|
  json.extract! substat, :latitude, :longitude
end
