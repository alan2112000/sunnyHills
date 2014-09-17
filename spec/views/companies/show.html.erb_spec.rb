require 'rails_helper'

RSpec.describe "companies/show", :type => :view do
  before(:each) do
    @company = assign(:invoice, Company.create!(
      :name => "Name",
      :company_no => "Company No",
      :person_charge => "Person Charge",
      :contact => "Contact"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Company No/)
    expect(rendered).to match(/Person Charge/)
    expect(rendered).to match(/Contact/)
  end
end
