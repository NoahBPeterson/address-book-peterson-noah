require "test_helper"

class PersonControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "http://127.0.0.1:3000/person#index"
    assert_response :redirect
  end

  test "should get new" do
    get "http://127.0.0.1:3000/person#new"
    assert_response :redirect
  end

  test "should get create" do
    get "http://127.0.0.1:3000/person#create"
    assert_response :redirect
  end

  test "should not get show" do
    get "http://127.0.0.1:3000/person#show"
    assert_response :redirect
  end

  test "should not get edit; not logged in" do
    get "http://127.0.0.1:3000/person#edit"
    assert_response :redirect
  end

  test "should not get destroy; not loged in" do
    get "http://127.0.0.1:3000/person#destroy"
    assert_response :redirect
  end
end
