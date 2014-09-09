require 'spec_helper'

RSpec.describe Company, :type => :model do
  let(:company) { Company.new(:name => "company_name", :company_no => "8020383") }

  it "should valide every column" do
    company.should be_valid
  end
  it "is not valid without a name " do
    company.name = nil
    company.should_not be_valid
  end
  it "is not valid without a company no" do
    company.company_no = nil
    company.should_not be_valid
  end
  it "is unique for company name " do
    company.name = "company_name"
    company2 = Company.new(:name => "company_name", :company_no => "802023")
    company2.should_not be_valid

  end
end
