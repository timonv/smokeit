# -*- encoding: utf-8 -*-
require File.expand_path('../lib/smokeit/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Timon Vonk"]
  gem.email         = ["timonv@gmail.com"]
  gem.description   = %q{Easy simple smoketests}
  gem.summary       = %q{Easy simple smoketests}
  gem.homepage      = "http://www.github.com/timonv/smokeit"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "smokeit"
  gem.require_paths = ["lib"]
  gem.version       = Smokeit::VERSION

  gem.add_development_dependency "test-unit"
  gem.add_development_dependency "rake"
end
