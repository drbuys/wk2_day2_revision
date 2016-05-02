class River

    def initialize (fish_population)
      @fishes = fish_population
    end

    def number_of_fish()
      @fishes.length
    end

    def remove_fishes()
      @fishes.pop
      return @fishes.length
    end

    def eat_fish_from_river(bear, fish)
      while fish > 0
        if @fishes.length > 0
          bear.food << @fishes.pop.name
          fish -= 1
        else
          return bear.roar
        end
      end
      return bear.food
    end

end
