# WorkingHours

WorkingHours is a simple gem that allows you to set the hours of operation
for a Rails application and then provides nice convenience methods
for determining whether a business is in operation and if it is the
weekend or not.

## Installation

Add this line to your application's Gemfile:

    gem 'working_hours'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install working_hours

## Usage

Quite simply as it stands right now you'll get two methods:

__after_hours?__
```ruby
# returns a boolean if it's after the business has closed or before it opens on a weekday
WorkingHours.after_hours?(now)
```

and

__weekend?__
```ruby
# returns a boolean if it's after the business has closed on Friday
WorkingHours.weekend?(now)
```

I have plans to add the following:

-  __open?__ and __closed?__
-  __hours?__
-  Support for setting the working hours in an initializer
-  Support for setting the timezone in an initializer

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
