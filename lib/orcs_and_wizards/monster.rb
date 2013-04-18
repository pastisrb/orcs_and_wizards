# encoding: utf-8

class Monster < Creature
  def hit(damage)
    super

    loot! if dead?
  end

  def fight(player)
    player.hit(0)
  end

  def loot!; end
end


