require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :name => "Name",
      :email => "Email",
      :phone => "Phone",
      :birthday => "Birthday",
      :loyalty_number => "Loyalty Number",
      :favorite_trucks => "Favorite Trucks",
      :favorite_fashion => "Favorite Fashion",
      :boutique_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Birthday/)
    expect(rendered).to match(/Loyalty Number/)
    expect(rendered).to match(/Favorite Trucks/)
    expect(rendered).to match(/Favorite Fashion/)
    expect(rendered).to match(/1/)
  end
end
