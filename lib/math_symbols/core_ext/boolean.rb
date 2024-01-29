class TrueClass
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

class FalseClass
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
