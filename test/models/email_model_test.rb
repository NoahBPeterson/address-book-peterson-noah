require "test_helper"

class EmailModelTest < ActionDispatch::IntegrationTest
  test "should not save email without person" do
    email = Email.new
    email.email_address = "123"
    assert_raise(Exception) { email.save }
  end

  test "should not save email without required fields" do
    email = Email.new
    assert_not email.save
  end

  test "should save email with person" do
    person = Person.new
    person.first_name = "a"
    person.last_name = "b"
    person.save
    email = Email.new
    email.person_id = person.id
    email.email_address = "123"
    assert email.save
  end
end
