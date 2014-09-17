require 'rails_helper'

RSpec.describe "orders/edit", :type => :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :company_id => 1,
      :amount => 1,
      :gift => "MyText",
      :invoice_id => 1
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_company_id[name=?]", "order[company_id]"

      assert_select "input#order_amount[name=?]", "order[amount]"

      assert_select "textarea#order_gift[name=?]", "order[gift]"

      assert_select "input#order_invoice_id[name=?]", "order[invoice_id]"
    end
  end
end
