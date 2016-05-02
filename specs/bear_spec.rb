require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class TestBear < MiniTest::Test

  def setup #run before every test we write
    @yogi_bear = Bear.new('Yogi', 'Grizzly', [])
    @dave_bear = Bear.new('Dave', 'Brown', [])
  end

    def test_bear_name()
     assert_equal('Yogi', @yogi_bear.name)
    end

    def test_bear_type()
      assert_equal('Brown', @dave_bear.type)
    end

    def test_food_in_stomach()
      assert_equal([], @yogi_bear.food)
    end

    def test_bear_roar()
      assert_equal("Roarasorus Rex", @dave_bear.roar)
    end

end
