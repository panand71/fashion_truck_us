require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :birthday => "Birthday",
        :loyalty_number => "Loyalty Number",
        :favorite_trucks => "Favorite Trucks",
        :favorite_fashion => "Favorite Fashion",
        :boutique_id => 1
      ),
      Customer.create!(
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :birthday => "Birthday",
        :loyalty_number => "Loyalty Number",
        :favorite_trucks => "Favorite Trucks",
        :favorite_fashion => "Favorite Fashion",
        :boutique_id => 1
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Birthday".to_s, :count => 2
    assert_select "tr>td", :text => "Loyalty Number".to_s, :count => 2
    assert_select "tr>td", :text => "Favorite Trucks".to_s, :count => 2
    assert_select "tr>td", :text => "Favorite Fashion".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
