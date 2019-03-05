require 'test_helper'
require 'benchmark'

class JustForFun::Test < ActiveSupport::TestCase
  test "works" do
    john = User.create(name: "John Smith")
    bob = User.create(name: "Bob Smith")

    apple = Company.create(name: "Apple")
    google = Company.create(name: "Google")

    assert_equal john.id.to_user, john
    assert_equal [john.id, bob.id].to_users, [john, bob]

    assert_equal google.id.to_company, google

    s = S.create(id: 1, title: "SSSSSSS")
    assert_equal s.id.to_s, "1"
  end

  test "beanchmark" do
    john = User.create(name: "John Smith")
    Benchmark.bm(7) do |x|
      x.report("original") { assert User.find(john.id) == john }
      x.report("to_user")  { assert john.id.to_user == john }
    end
  end
end
