require 'rails_helper'

RSpec.describe 'products/show' do
  before(:each) do
    assign(:product, Product.create!(
                       name: 'Name',
                       stock: 2
                     ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end
