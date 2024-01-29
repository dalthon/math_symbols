require_relative 'math_symbols/version'

module MathSymbols # rubocop:disable Metrics/ModuleLength
  refine Array.singleton_class do
    def ø
      []
    end
    alias :Ø :ø
  end
end
