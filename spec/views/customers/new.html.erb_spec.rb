require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :birthday => "MyString",
      :loyalty_number => "MyString",
      :favorite_trucks => "MyString",
      :favorite_fashion => "MyString",
      :boutique_id => 1
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input#customer_name[name=?]", "customer[name]"

      assert_select "input#customer_email[name=?]", "customer[email]"

      assert_select "input#customer_phone[name=?]", "customer[phone]"

      assert_select "input#customer_birthday[name=?]", "customer[birthday]"

      assert_select "input#customer_loyalty_number[name=?]", "customer[loyalty_number]"

      assert_select "input#customer_favorite_trucks[name=?]", "customer[favorite_trucks]"

      assert_select "input#customer_favorite_fashion[name=?]", "customer[favorite_fashion]"

      assert_select "input#customer_boutique_id[name=?]", "customer[boutique_id]"
    end
  end
end
