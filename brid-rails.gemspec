# -*- encoding: utf-8 -*-
require File.expand_path('../lib/brid-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Halan Pinheiro"]
  gem.email         = ["halan.pinheiro@gmail.com"]
  gem.description   = %q{Implement of Brid gem on ActiveModel}
  gem.summary       = %q{Implement of Brid gem on ActiveModel}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "brid-rails"
  gem.require_paths = ["lib"]
  gem.version       = Brid::Rails::VERSION

  gem.add_runtime_dependency 'activemodel', ['~> 3.0']
  gem.add_runtime_dependency 'brid', ['~> 0.2']
end
