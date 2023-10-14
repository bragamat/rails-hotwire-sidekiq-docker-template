require 'rails_helper'

describe UpController do
  it 'gets up' do
    get :index
    assert_response :success
  end

  it 'gets up databases' do
    get :databases
    assert_response :success
  end
end
