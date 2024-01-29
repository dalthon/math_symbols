module Enumerable
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
