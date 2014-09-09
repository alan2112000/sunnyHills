json.array!(@companies) do |company|
  json.extract! company, :id, :name, :company_no, :person_charge, :contact
  json.url company_url(company, format: :json)
end
