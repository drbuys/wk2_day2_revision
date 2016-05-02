require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../bear.rb')
require_relative('../fish.rb')

class TestRiver < MiniTest::Test

  def setup #run before every test we write
  fish1 = Fish.new( 'Dory' )
  fish2 = Fish.new( 'Wanda' )
  fish3 = Fish.new( 'Jaws' )

  fish_population = [fish1, fish2, fish3]

  @river = River.new( fish_population ) #instance variable available to everything in class TestBank
  end

  def test_river_initial_state()
    assert_equal( 3, @river.number_of_fish )
  end


end
