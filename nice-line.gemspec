# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nice/line/version'

Gem::Specification.new do |spec|
  spec.name          = "nice-line"
  spec.version       = Nice::Line::VERSION
  spec.authors       = ["Gilad Goldberg"]
  spec.email         = ["giladgo@gmail.com"]
  spec.summary       = %q{A client for nice-line-server}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.4"
  spec.add_development_dependency "rake"
end
