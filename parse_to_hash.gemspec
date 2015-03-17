# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'parse_to_hash/version'

Gem::Specification.new do |spec|
  spec.name          = "parse_to_hash"
  spec.version       = ParseToHash::VERSION
  spec.authors       = ["Fraser Scott"]
  spec.email         = ["fraser.scott@gmail.com"]
  spec.summary       = %q{Simple gem for parsing text into an array of hashes}
  spec.description   = %q{Takes space-separated values and parses into an array of hashes}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
