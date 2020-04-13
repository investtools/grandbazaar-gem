
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "grandbazaar/version"

Gem::Specification.new do |spec|
  spec.name          = "grandbazaar"
  spec.version       = Grandbazaar::VERSION
  spec.authors       = ["Fabiano Martins"]
  spec.email         = ["fabiano@investtools.com.br"]

  spec.summary       = %q{Is a microview framework}
  spec.description   = %q{Get all assets and html froma third-party reliable}
  spec.homepage      = "https://www.investtools.com.br"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec-support", "~> 3.1.2"
  spec.add_development_dependency "guard-rspec", "~> 4.7.3"
  
end
