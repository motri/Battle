
class Player

  DEFAULT_HP = 100
  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
  end

end
