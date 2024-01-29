class Integer
  def √(value)
    value ** (1.0 / self)
  end

  def ⊕(value)
    self ^ value
  end

  def ⇔(value)
    max_bit_length = value.bit_length
    max_bit_length = bit_length if bit_length > max_bit_length
    mask = (1 << max_bit_length) - 1

    (self & value) | ((mask ^ self) & (mask ^ value))
  end
  alias :↔ :⇔

  def ⇒(value)
    mask = (1 << bit_length) - 1
    (mask ^ self) | value
  end
end
