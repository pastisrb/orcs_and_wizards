# encoding: utf-8

class Creature

  attr_reader :health

  def initialize(traits={})
    @health = @max_health = traits[:health] || 5
  end

  def dead?
    @health <= 0
  end

  def alive?
    not dead?
  end

  def inspect
    "#{self.class} #{health}/#{max_health}hp"
  end

protected

  def hit(damage)
    @health -= damage
    message = @health <= 0 ? "dies" : "takes #{damage} damage"

    act(message)
  end

private

  attr_reader :max_health

  def act(message)
    puts "#{self.class} #{message}"
    self
  end

end

