# -*- encoding: utf-8 -*-
require File.expand_path('../lib/simple_twitter/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Elaine Marino"]
  gem.email         = ["elaine.c.marino@gmail.com"]
  gem.description   = %q{Twitter Class Project}
  gem.summary       = %q{Shows how to search Twitter and work with JSON}
  gem.homepage      = "https://github.com/emarino13/simple_twitter"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "simple_twitter"
  gem.require_paths = ["lib"]
  gem.version       = SimpleTwitter::VERSION
  gem.add_dependency('httparty', '~> 0.8.3')
end
