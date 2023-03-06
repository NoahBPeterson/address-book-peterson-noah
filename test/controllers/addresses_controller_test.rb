require "test_helper"

class AddressesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "http://127.0.0.1:3000/addresses#index"
    assert_response :success
  end

  test "should get new" do
    get "http://127.0.0.1:3000/addresses#new"
    assert_response :success
  end

  test "should get create" do
    get "http://127.0.0.1:3000/addresses#create"
    assert_response :success
  end

  test "should get show" do
    get "http://127.0.0.1:3000/addresses#show"
    assert_response :success
  end

  test "should get edit" do
    get "http://127.0.0.1:3000/addresses#edit"
    assert_response :success
  end

  test "should get destroy" do
    get "http://127.0.0.1:3000/addresses#destroy"
    assert_response :success
  end
end
