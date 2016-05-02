class Bear

  attr_accessor :name, :type, :food

  def initialize(name, type, food)
    @name = name
    @type = type
    @food = []
  end

  def roar()
    return "Roarasorus Rex"
  end

end
