# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'forkbomb/test/version'

Gem::Specification.new do |spec|
  spec.name          = "forkbomb-test"
  spec.version       = Forkbomb::Test::VERSION
  spec.authors       = ["Syohei YOSHIDA"]
  spec.email         = ["syohex@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = ""
  end

  spec.summary       = %q{forkbomb test for rbenv}
  spec.description   = %q{forkbomb test for rbenv}
  spec.homepage      = "https://github.com/syohex/forkbomb-test"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
