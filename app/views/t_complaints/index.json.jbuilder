json.array!(@t_complaints) do |t_complaint|
  json.extract! t_complaint, :id, :cmpnumber, :cmpfirst, :cmpmiddle, :cmplast, :cmpdetails
  json.url t_complaint_url(t_complaint, format: :json)
end
