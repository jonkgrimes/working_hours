# WorkingHours

WorkingHours is a simple gem that allows you to set the hours of operation
for a Rails application and then provides nice convenience methods
for determining whether a business is in operation and if it is the
weekend or not.

## Installation

Add this line to your application's Gemfile:

    gem 'working_hours', git: "git://github.com/jonkgrimes/working_hours.git"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install working_hours

## Usage

The methods that are currently available:

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

__open?__
```ruby
# returns a boolean if the business is currently open
WorkingHours.open?
```

__closed?__
```ruby
WorkingHours.closed?
```

Things I plan to add
-  __hours?__
-  Error checking for the initializer
-  Taking multiple types in the initializer (Strings, Integers, TimeZone)
-  Using Rails' built-in timezone settings if applicable
-  Different messages for models based on WorkingHours methods (for instance
a different validation/error/ completion message for when a business is 
closed or open)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
