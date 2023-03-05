require "test_helper"

class PersonModelTest < ActionDispatch::IntegrationTest
  test "should save person" do
    person = Person.new
    person.first_name = "123"
    person.last_name = "456"
    assert person.save
  end

  test "should not save person without required fields" do
    person = Person.new
    assert_not person.save
  end
end
