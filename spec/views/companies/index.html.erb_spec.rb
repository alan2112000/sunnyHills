require 'rails_helper'

RSpec.describe "companies/index", :type => :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
        :name => "Name",
        :company_no => "Company No",
        :person_charge => "Person Charge",
        :contact => "Contact"
      ),
      Company.create!(
        :name => "Name",
        :company_no => "Company No",
        :person_charge => "Person Charge",
        :contact => "Contact"
      )
    ])
  end

  it "renders a list of companies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company No".to_s, :count => 2
    assert_select "tr>td", :text => "Person Charge".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
  end
end
