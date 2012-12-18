# -*- encoding: utf-8 -*-
require File.expand_path('../lib/better_select/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["benastan"]
  gem.email         = ["bennyjbergstein@gmail.com"]
  gem.description   = "A better HTMLSelectElement replacement"
  gem.summary   = "A better HTMLSelectElement replacement, for Rails"
  gem.homepage = "http://www.benjaminberstein.com"

  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "better_select"
  gem.require_paths = ["lib", "vendor"]
  gem.files         = `git ls-files`.split($\) + Dir["vendor/**/*"]
  gem.version       = BetterSelect::VERSION

  gem.add_dependency "railties", "~> 3.1"
end
