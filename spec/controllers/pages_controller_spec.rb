require 'rails_helper'

describe PagesController do
  it 'gets home' do
    get :home
    assert_response :success
  end
end
