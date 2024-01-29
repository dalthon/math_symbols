module MathSymbols
  module MathExtensions
    def ∑(enumerable)
      enumerable.inject 0 do |acc, x|
        acc + yield(x)
      end
    end

    def ∏(enumerable)
      enumerable.inject 1 do |acc, x|
        acc * yield(x)
      end
    end

    def √(value)
      Math.sqrt value
    end

    def Γ(value)
      Math.gamma value
    end

    def π
      Math::PI
    end

    def ∞
      Float::INFINITY
    end

    def δ(value)
      value.zero? ? ∞ : 0
    end
  end
end
