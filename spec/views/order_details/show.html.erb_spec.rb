require 'rails_helper'

RSpec.describe "order_details/show", :type => :view do
  before(:each) do
    @order_detail = assign(:order_detail, OrderDetail.create!(
      :order_id => 1,
      :product_id => 2,
      :amount => 3,
      :total_price => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
