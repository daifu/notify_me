# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'notify_me/version'

Gem::Specification.new do |spec|
  spec.name          = "notify_me"
  spec.version       = NotifyMe::VERSION
  spec.authors       = ["Daniel LaBare"]
  spec.email         = ["dlabare@gmail.com"]
  spec.description   = %q{Simple notification system}
  spec.summary       = %q{Shoot yourself an email when critical stuff happens in your app}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency('actionmailer', '>= 3.0.0')
end
