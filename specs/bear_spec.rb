require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class TestBear < MiniTest::Test

    def test_bear_name
     yogi_bear = Bear.new('Yogi', 'Grizzly', 0)
     assert_equal('Yogi', yogi_bear.name)
    end

    def test_bear_roar
      dave_bear = Bear.new('Dave', 'Brown', 2)
      assert_equal("Roar", dave_bear.roar)
    end



end
