require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../bear.rb')
require_relative('../fish.rb')

class TestRiver < MiniTest::Test

  def setup #run before every test we write
  @yogi_bear = Bear.new('Yogi', 'Grizzly', [])
  @dave_bear = Bear.new('Dave', 'Brown', [])

  fish1 = Fish.new( 'Dory' )
  fish2 = Fish.new( 'Wanda' )
  fish3 = Fish.new( 'Jaws' )
  fish4 = Fish.new( 'Nemo' )

  fish_population = [fish1, fish2, fish3, fish4]

  @river = River.new( fish_population ) #instance variable available to everything in class TestBank
  end

  def test_river_initial_state()
    assert_equal( 4, @river.number_of_fish )
  end

  def test_eat_fish_from_river1
   assert_equal(["Nemo", "Jaws", "Wanda"], @river.eat_fish_from_river(@yogi_bear, 3))
   puts @river.inspect
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

  def test_remove_fishes()
    assert_equal( 3, @river.remove_fishes)
  end

end
