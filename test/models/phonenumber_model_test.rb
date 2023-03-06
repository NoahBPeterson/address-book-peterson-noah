require "test_helper"

class PhoneNumberModelTest < ActionDispatch::IntegrationTest
  test "should not save number without person" do
    number = PhoneNumber.new
    number.phone_number = "123"
    assert_raise(Exception) { number.save }
  end

  test "should not save number without required fields" do
    number = PhoneNumber.new
    assert_not number.save
  end

  test "should save number with person" do
    user = User.new
    user.username = "123"
    user.password = "123"
    user.save
    person = Person.new
    person.first_name = "a"
    person.last_name = "b"
    person.user_id = user.id
    person.save
    number = PhoneNumber.new
    number.person_id = person.id
    number.phone_number = "123"
    assert number.save
  end
end
