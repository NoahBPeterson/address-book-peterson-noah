require "test_helper"

class AddressModelTest < ActionDispatch::IntegrationTest
  test "should not save address without person" do
    address = Address.new
    address.street = "123"
    address.town = "456"
    address.zip_code = "12345"
    assert_raise(Exception) { address.save }
  end

  test "should not save address without required fields" do
    address = Address.new
    assert_not address.save
  end

  test "should save address with person" do
    user = User.new
    user.username = "123"
    user.password = "123"
    user.save
    person = Person.new
    person.first_name = "a"
    person.last_name = "b"
    person.user_id = user.id
    person.save
    address = Address.new
    address.person_id = person.id
    address.street = "123"
    address.town = "456"
    address.zip_code = "12345"
    assert address.save
  end
end
