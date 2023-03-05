require "test_helper"

class PersonControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "http://127.0.0.1:3000/person#index"
    assert_response :success
  end

  test "should get new" do
    get "http://127.0.0.1:3000/person#new"
    assert_response :success
  end

  test "should get create" do
    get "http://127.0.0.1:3000/person#create"
    assert_response :success
  end

  test "should get show" do
    get "http://127.0.0.1:3000/person#show"
    assert_response :success
  end

  test "should get edit" do
    get "http://127.0.0.1:3000/person#edit"
    assert_response :success
  end

  test "should get update" do
    get "http://127.0.0.1:3000/person#update"
    assert_response :success
  end

  test "should get destroy" do
    get "http://127.0.0.1:3000/person#destroy"
    assert_response :success
  end
end
