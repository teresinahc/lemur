# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lemur/version'

Gem::Specification.new do |spec|
  spec.name          = 'lemur'
  spec.version       = Lemur::VERSION
  spec.authors       = ['Rafael Guimarães']
  spec.email         = ['rafaelguimaraesweb@gmail.com']

  spec.summary       = 'Wrapper for the Brazilian Chamber of Deputies public API'
  spec.description   = 'Wrapper for the Brazilian Chamber of Deputies public API'
  spec.homepage      = "https://teresinahc.org"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "faraday", "~> 0.12.1"
  spec.add_development_dependency "faraday_middleware", "~> 0.11.0.1"
end
