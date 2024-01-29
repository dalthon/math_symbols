# MathSymbols

Support for mathematical syntactic sugars!

## Installation

```sh
gem install math_symbols
```

## Usage

This is how we should write function that calculates a fourier for a step
function without this gem:

```ruby
def traditional_way(x, n_max = 10)
  (4/Math::PI) * (1..n_max).step(2).inject(0) do |acc, n|
    acc += Math.sin(n*Math::PI*x)/n
  end
end

traditional_way(0.5) # => 1.0630539690963425
```

This is how we can do with it:

```ruby
require 'math_symbols'
using MathSymbols

sweet_way = ƒ do |x, n_max = 10|
  (4/π) * (1..n_max).step(2).∑{ |n| sin(n*π*x)/n }
end

sweet_way[0.5] # => 1.0630539690963425
```

or

```ruby
require 'math_symbols'
using MathSymbols

def sweet_way(x, n_max = 10)
  λ do
    (4/π) * (1..n_max).step(2).∑{ |n| sin(n*π*x)/n }
  end
end

sweet_way(0.5) # => 1.0630539690963425
```

Which one is easier to read and therefor maintain?

## Usage Without Refinements

If you prefer not to use refinements, just load its core extensions in the same
way that you would have done on ActiveSupport.

```ruby
require 'math_symbols/core_ext'

π # => 3.141592
```

## Development

Run `rake` to rubocop, RBS and RSpec tests.

## Contributing

Bug reports and PRs are welcome on GitHub at
https://github.com/dalthon/math_symbols.

## License

The gem is available as open source under the terms of the
[MIT License](https://opensource.org/licenses/MIT).
