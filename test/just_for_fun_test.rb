require 'test_helper'

class JustForFun::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, JustForFun
  end

  test "works" do
    john = User.create(name: "John Smith")
    bob = User.create(name: "Bob Smith")

    apple = Company.create(name: "Apple")
    google = Company.create(name: "Google")

    assert_equal john.id.to_user, john
    assert_equal [john.id, bob.id].to_users, [john, bob]

    assert_equal google.id.to_company, google
  end
end
