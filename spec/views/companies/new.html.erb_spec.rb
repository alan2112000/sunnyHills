require 'rails_helper'

RSpec.describe "companies/new", :type => :view do
  before(:each) do
    assign(:company, Company.new(
      :name => "MyString",
      :company_no => "MyString",
      :person_charge => "MyString",
      :contact => "MyString"
    ))
  end

  it "renders new company form" do
    render

    assert_select "form[action=?][method=?]", companies_path, "post" do

      assert_select "input#company_name[name=?]", "company[name]"

      assert_select "input#company_company_no[name=?]", "company[company_no]"

      assert_select "input#company_person_charge[name=?]", "company[person_charge]"

      assert_select "input#company_contact[name=?]", "company[contact]"
    end
  end
end
