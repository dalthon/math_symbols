class Object
  include MathSymbols::MathExtensions

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
