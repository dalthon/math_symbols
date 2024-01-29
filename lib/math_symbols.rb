require_relative 'math_symbols/version'
require_relative 'math_symbols/math_extensions'

module MathSymbols # rubocop:disable Metrics/ModuleLength
  refine Math.singleton_class do
    import_methods MathSymbols::MathExtensions
  end

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
    import_methods MathSymbols::MathExtensions

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

  refine TrueClass do
    def ⊕(other)
      !other
    end

    def ⇔(other)
      other
    end
    alias :↔ :⇔

    def ⇒(other)
      other
    end
  end

  refine FalseClass do
    def ⊕(other)
      other
    end

    def ⇔(other)
      !other
    end
    alias :↔ :⇔

    def ⇒(_other)
      true
    end
  end

  refine Integer do
    def √(value)
      value ** (1.0 / self)
    end

    def ⊕(value)
      self ^ value
    end

    def ⇔(value)
      (self && value) || (!self && !value)
    end
    alias :↔ :⇔

    def ⇒(value)
      !self || value
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
