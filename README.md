# SimpleConfigurable

Simple configuration module for specifying the configuration attributes of a class using a very simple syntax.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_configurable'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_configurable

## Usage


```ruby
class Test
  include SimpleConfigurable.with :enabled, :email
end

Test.configure do |config|
  config.enabled = true
  config.email = 'test@example.com'
end

Test.config
 => #<#<Class:0x00000001c80590>:0x00000001c5c870 @enabled=true, @email="test@example.com">
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
