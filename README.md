This gem is adding shortcuts for Integer and Array classes so you can call `to_XXXXX` method and get object or relation object.

## Usage

For example you have classes `User, Company` in your app.

You can do the following:

`1.to_user` which is equat to `User.find(1)`
`[1,2,3].to_users` => `User.where(id: [1,2,3])`

`42.to_company` => `Company.find(42)`

## Installation

```ruby
gem 'just_for_fun'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install just_for_fun
```

## Implementation

See `lib/tasks/railtie.rb`. When app is starting gem is defining such methods.

## Contributing

You are welcome to contribute.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
