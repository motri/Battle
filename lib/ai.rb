# It understands automated player
class Ai
  attr_reader :name, :hp

  HP_DEFAULT = 100
  def initialize(name = 'Computer', hp = HP_DEFAULT)
    @name = name
    @hp = hp
  end

  def reduce_hp
    @hp -= random_damage < 8 ? 10 : 20
  end

  def random_damage
    rand(10)
  end
end
