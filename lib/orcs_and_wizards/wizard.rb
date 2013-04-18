# encoding: utf-8

class Wizard < Creature

  def initialize
    super(health: 10)
    @magic = @max_magic = 5
  end

  def sparks(target)
    if @magic <= 0
      act("no more magic!")
      return target
    end

    act("casts sparks on #{target.class}")
    @magic -= 1
    target.hit(1)
  end

  def inspect
    "#{super} #{@magic}/#{@max_magic}mp"
  end

end

