require 'spec_helper'

RSpec.describe Company, :type => :model do
  let(:invoice) { Company.new(:name => "company_name", :company_no => "8020383") }

  it "should valide every column" do
    invoice.should be_valid
  end
  it "is not valid without a name " do
    invoice.name = nil
    invoice.should_not be_valid
  end
  it "is not valid without a company no" do
    invoice.company_no = nil
    invoice.should_not be_valid
  end
  it "is unique for company name " do
    invoice.name = "company_name"
    company2 = Company.new(:name => "company_name", :company_no => "802023")
    company2.should_not be_valid

  end
end
