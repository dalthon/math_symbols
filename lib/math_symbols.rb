require_relative 'math_symbols/version'

module MathSymbols # rubocop:disable Metrics/ModuleLength
  refine Array.singleton_class do
    def ø
      []
    end
    alias :Ø :ø
  end

  refine Hash.singleton_class do
    def ø
      {}
    end
    alias :Ø :ø
  end

  refine Enumerable do
    def ∑
      inject 0 do |acc, x|
        yield(x) + acc
      end
    end

    def ∏
      inject 1 do |acc, x|
        yield(x) * acc
      end
    end

    alias :∀ :all?
    alias :∃ :any?
    alias :∄ :none?
  end

  refine Object do
    def ∑(enumerable)
      enumerable.inject 0 do |acc, x|
        yield(x) + acc
      end
    end

    def ∏(enumerable)
      enumerable.inject 1 do |acc, x|
        yield(x) * acc
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

    def ∈(set)
      set.include? self
    end

    def ∉(set)
      !∈(set)
    end

    def ƒ(&block)
      lambda do |*x|
        Math.instance_exec(*x, &block)
      end
    end

    def λ(&block)
      Math.instance_eval(&block)
    end
  end

  refine Integer do
    def √(value)
      value ** (1.0 / self)
    end
  end

  refine Float do
    def √(value)
      value ** (1.0 / self)
    end
  end

  refine Complex do
    def √(value)
      value ** (1.0 / self)
    end
  end

  refine Rational do
    def √(value)
      value ** (1.0 / self)
    end
  end
end
