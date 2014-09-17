json.array!(@orders) do |order|
  json.extract! order, :id, :company_id, :amount, :date, :gift, :arrival_date, :invoice_id
  json.url order_url(order, format: :json)
end
