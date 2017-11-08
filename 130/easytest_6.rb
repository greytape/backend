require 'minitest/autorun'

class NoExperienceError < StandardError; end

class Staff
  def initialize(experience)
    @experience = experience
  end

  def hire
    raise NoExperienceError unless @experience
  end
end

class Test < MiniTest::Test
  def test_hire
    employee = Staff.new(true)
    assert_raises NoExperienceError do 
      employee.hire
    end
  end
end