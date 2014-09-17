require 'rails_helper'

RSpec.describe "orders/new", :type => :view do
  before(:each) do
    assign(:order, Order.new(
      :company_id => 1,
      :amount => 1,
      :gift => "MyText",
      :invoice_id => 1
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input#order_company_id[name=?]", "order[company_id]"

      assert_select "input#order_amount[name=?]", "order[amount]"

      assert_select "textarea#order_gift[name=?]", "order[gift]"

      assert_select "input#order_invoice_id[name=?]", "order[invoice_id]"
    end
  end
end
