require_relative 'lib/math_symbols/version'

Gem::Specification.new do |spec|
  spec.name    = 'math_symbols'
  spec.version = MathSymbols::VERSION
  spec.authors = ['Dalton Pinto']
  spec.email   = ['dalton.pinto@local']

  spec.summary               = 'Support for mathematical syntactic sugars'
  spec.description           = 'Support for mathematical syntactic sugars'
  spec.homepage              = 'https://github.com/dalthon/math_symbols'
  spec.license               = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri']   = "#{spec.homepage}/blob/master/CHANGELOG.md"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.require_paths = ['lib']
end
