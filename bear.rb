class Bear

  attr_accessor :name, :type, :tummy

  def initialize(name, type, tummy)
    @name = name
    @type = type
    @tummy = tummy
  end

  def roar()
    return "Roar"
  end


end
