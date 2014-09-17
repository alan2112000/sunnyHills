require 'rails_helper'

RSpec.describe "order_details/new", :type => :view do
  before(:each) do
    assign(:order_detail, OrderDetail.new(
      :order_id => 1,
      :product_id => 1,
      :amount => 1,
      :total_price => 1
    ))
  end

  it "renders new order_detail form" do
    render

    assert_select "form[action=?][method=?]", order_details_path, "post" do

      assert_select "input#order_detail_order_id[name=?]", "order_detail[order_id]"

      assert_select "input#order_detail_product_id[name=?]", "order_detail[product_id]"

      assert_select "input#order_detail_amount[name=?]", "order_detail[amount]"

      assert_select "input#order_detail_total_price[name=?]", "order_detail[total_price]"
    end
  end
end
