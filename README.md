# RSpec Deep Matcher

[![Gem Version](https://badge.fury.io/rb/rspec-rails-deep-ignore-order-matcher.png)](http://badge.fury.io/rb/rspec-rails-deep-ignore-order-matcher)

This gem adds a custom matcher to RSpec to recursively compare nested Ruby data-structures consisting of Hash and Array elements.
An order of elements in an array is ignored.

## Install
```
gem install rspec-rails-deep-ignore-order-matcher
```
or add to your `Gemfile`
```
gem 'rspec-rails-deep-ignore-order-matcher'
```
and run
```
bundle install
```

## Example
```
require 'rspec-deep-ignore-order-matcher'

describe 'Products' do
	it "should ignore order of product's tags" do
		expected = [{ :product => { :title => 'Product 1', :tags => ['large', 'blue', 'heavy'] } }]
		actual = [{ :product => { :title => 'Product 1', :tags => ['blue', 'large', 'heavy'] } }]
		expect(actual).to be_deep_equal(expected)
	end
end
```
