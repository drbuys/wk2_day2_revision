require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../bear.rb')
require_relative('../fish.rb')

class TestFish < MiniTest::Test

  def test_fish_name
    dory_fish = Fish.new('Dory')
    assert_equal('Dory', dory_fish.name)
  end

end
