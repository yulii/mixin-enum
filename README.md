# Mixin::Enum

[![Gem Version](https://badge.fury.io/rb/mixin-enum.svg)](https://badge.fury.io/rb/mixin-enum)
[![Build Status](https://travis-ci.org/yulii/mixin-enum.svg?branch=master)](https://travis-ci.org/yulii/mixin-enum)
[![Coverage Status](https://coveralls.io/repos/github/yulii/mixin-enum/badge.svg?branch=master)](https://coveralls.io/github/yulii/mixin-enum?branch=master)

Provides a module constant for defining enumerations.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mixin-enum'
```

## Usage

Include Mixin::Enum and define constants on the module. You can see [the examples of enumeration module file](https://github.com/yulii/mixin-enum/tree/master/examples).


```ruby
module StatusCode
  include Mixin::Enum

  enumerated do
    set(:REQUESTED,    1)
    set(:IN_PROGRESS,  2)
    set(:UNDER_REVIEW, 3)
    set(:APPROVED,     4)
    set(:REJECTED,     5)
    set(:CANCELLED,    6)
  end
end

irb> StatusCode::REQUESTED
=> 1
irb> StatusCode.values
=> [1, 2, 3, 4, 5, 6]
irb> StatusCode.all
=> {:REQUESTED=>1, :IN_PROGRESS=>2, :UNDER_REVIEW=>3, :APPROVED=>4, :REJECTED=>5, :CANCELLED=>6}
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yulii/mixin-enum. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
