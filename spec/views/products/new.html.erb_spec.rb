require 'rails_helper'

RSpec.describe 'products/new' do
  before(:each) do
    assign(:product, Product.new(
                       name: 'MyString',
                       stock: 1
                     ))
  end

  it 'renders new product form' do
    render

    assert_select 'form[action=?][method=?]', products_path, 'post' do
      assert_select 'input[name=?]', 'product[name]'

      assert_select 'input[name=?]', 'product[stock]'
    end
  end
end
