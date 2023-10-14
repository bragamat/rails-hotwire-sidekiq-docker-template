require 'rails_helper'

RSpec.describe 'products/edit' do
  let(:product) do
    Product.create!(
      name: 'MyString',
      stock: 1
    )
  end

  before(:each) do
    assign(:product, product)
  end

  it 'renders the edit product form' do
    render

    assert_select 'form[action=?][method=?]', product_path(product), 'post' do
      assert_select 'input[name=?]', 'product[name]'

      assert_select 'input[name=?]', 'product[stock]'
    end
  end
end
