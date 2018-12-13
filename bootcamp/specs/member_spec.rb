require('minitest/autorun')
require('minitest/rg')
require_relative('../models/bookedclass.rb')
require_relative('../models/gymclass.rb')
require_relative('../models/member.rb')

class TestMember < Minitest::Test

  def setup
    @member = Member.new({
      "name" => "Rick Symington",
      "age" => 38,
      "gender" => "M",
      "membership_category" => "Premium"
      })
  end

  def test_member_has_name
    assert_equal("Rick Symington", @member.name)
  end

  def test_member_has_age
    assert_equal(38, @member.age)
  end

  def test_member_has_gender
    assert_equal("M", @member.gender)
  end

  def test_membership_category
    assert_equal("Premium", @member.membership_category)
  end 

end
