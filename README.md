# WorkingHours

WorkingHours is a simple gem that allows you to set the hours of operation
for a Rails application and then provides nice convenience methods
for determining whether a business is in operation.

## Installation

Add this line to your application's Gemfile:

    gem 'working_hours'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install working_hours

## Usage

Quite simply, including the gem will give you the default hours of operation
(9 AM CT to 5 PM CT) and the follwing methods:

* after_hours?(now)
* weekend? 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
