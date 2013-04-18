# encoding: utf-8

require 'orcs_and_wizards/monster'

class Goblin < Monster
  def initialize
    super(health: 1)
  end

  def loot!
    Loot.any?
  end

  def fight(player)
    act("hits the #{player.class} with is knife")
    player.hit(d(2))
  end
end

class Orc < Monster
  def fight(player)
    act("hits the #{player.class} with his dagger")
    player.hit(d(4))
  end
end

