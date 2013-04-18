# encoding: utf-8

module Loot
  module Sword
    def /(other)
      other.hit(d(4))
    end
  end

  module Claymore
    def /(other)
      other.hit(d(8))
    end
  end

  module Shield
    def hit(damage)
      act("damages reduced by the shield")
      super(damage - 1)
    end
  end

  def any?
    Loot.const_get(constants.sample)
  end
  module_function :any?
end

