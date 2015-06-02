# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec-rails-deep-ignore-order-matcher/version'

Gem::Specification.new do |gem|
	gem.name = "rspec-rails-deep-ignore-order-matcher"
	gem.version = Deep::Ignore::Order::Matcher::VERSION
	gem.authors = ["Mohammed Header"]
	gem.email = ["mohheader@hotmail.com"]
	gem.description = %q{This gem adds a custom matcher to RSpec-rails to recursively compare nested Ruby data-structures consisting of `Hash` and `Array` elements. An order of elements in an array is ignored. Based on the other GEM : rspec-deep-ignore-order-matcher }
	gem.summary = %q{A custom matcher to RSpec to recursively compare nested Ruby data-structures consisting of `Hash` and `Array` elements.}
	gem.homepage = 'https://github.com/mohheader/rspec-rails-deep-ignore-order-matcher'

	gem.files = `git ls-files`.split($/)
	gem.executables = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
	gem.test_files = gem.files.grep(%r{^(test|spec|features)/})
	gem.require_paths = ["lib"]

	gem.add_development_dependency 'rspec-rails', '~> 3.2'
	gem.add_runtime_dependency 'rspec-rails', '~> 3.2'
end
