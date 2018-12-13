require('minitest/autorun')
require('minitest/rg')
require_relative('../models/bookedclass.rb')
require_relative('../models/gymclass.rb')
require_relative('../models/member.rb')

class TestGymClass < Minitest::Test

  def setup
    @gymclass = GymClass.new({
      "gymclass_name" => "Bodypump",
      "instructor" => "Gary",
      "capacity" => 5,
      "start_time" => "10:30",
      "end_time" => "11:30"
      })
  end

  def test_gymclass_has_name
    assert_equal("Bodypump", @gymclass.gymclass_name)
  end

  def test_instructor
    assert_equal("Gary", @gymclass.instructor)
  end

  def test_capacity
    assert_equal(5, @gymclass.capacity)
  end 
  #
  # def test_start_time
  # end
  #
  # def test_end_time
  # end

end
