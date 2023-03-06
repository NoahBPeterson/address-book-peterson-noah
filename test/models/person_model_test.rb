require "test_helper"

class PersonModelTest < ActionDispatch::IntegrationTest
  test "should save person" do
    user = User.new
    user.username = "123"
    user.password = "123"
    user.save
    person = Person.new
    person.first_name = "123"
    person.last_name = "456"
    person.user_id = user.id
    assert person.save
  end

  test "should not save person without required fields" do
    person = Person.new
    assert_not person.save
  end
end
