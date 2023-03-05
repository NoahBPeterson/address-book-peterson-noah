require "test_helper"

class EmailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "http://127.0.0.1:3000/emails#index"
    assert_response :success
  end

  test "should get new" do
    get "http://127.0.0.1:3000/emails#new"
    assert_response :success
  end

  test "should get create" do
    get "http://127.0.0.1:3000/emails#create"
    assert_response :success
  end

  test "should get show" do
    get "http://127.0.0.1:3000/emails#show"
    assert_response :success
  end

  test "should get edit" do
    get "http://127.0.0.1:3000/addresses#edit"
    assert_response :success
  end

  test "should get update" do
    get "http://127.0.0.1:3000/addresses#update"
    assert_response :success
  end

  test "should get destroy" do
    get "http://127.0.0.1:3000/addresses#destroy"
    assert_response :success
  end
end
