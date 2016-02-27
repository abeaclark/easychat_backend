json.array!(@shifts) do |shift|
  json.extract! shift, :id, :name, :start_time
  json.url shift_url(shift, format: :json)
end
