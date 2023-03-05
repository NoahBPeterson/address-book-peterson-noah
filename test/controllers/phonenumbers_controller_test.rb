require "test_helper"

class PhonenumbersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "http://127.0.0.1:3000/phonenumbers#index"
    assert_response :success
  end

  test "should get new" do
    get "http://127.0.0.1:3000/phonenumbers#new"
    assert_response :success
  end

  test "should get create" do
    get "http://127.0.0.1:3000/phonenumbers#create"
    assert_response :success
  end

  test "should get show" do
    get "http://127.0.0.1:3000/phonenumbers#show"
    assert_response :success
  end

  test "should get edit" do
    get "http://127.0.0.1:3000/phonenumbers#edit"
    assert_response :success
  end

  test "should get update" do
    get "http://127.0.0.1:3000/phonenumbers#update"
    assert_response :success
  end

  test "should get destroy" do
    get "http://127.0.0.1:3000/phonenumbers#destroy"
    assert_response :success
  end
end
