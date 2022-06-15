# ExperimentsLoader

This gem makes it possible to load a remote JS and CSS file from a server based on an experiment key.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'experiments_loader'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install experiments_loader

## Usage

By default, the experiment loader will look for files in the /experiments/ path relative to the
existing page. The experiment key will be loaded from a query parameter.

For example, if you access `https://localhost/?exp=123456` then it will try to load the following files:

https://localhost/experiments/123456.js
https://localhost/experiments/123456.css

You can change the pattern of the URL by setting the following configuration in an initializer:

```ruby
ExperimentsLoader.configure do |config|
  config.url_pattern = 'https://cdn.yoursite.com/exp/%<key>s/source.%<ext>s'
end
```

The string format follows the [sprintf](https://apidock.com/ruby/Kernel/sprintf) formatting guidelines and passes a `key` and an `ext` value.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/retailzipline/experiments_loader. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/retailzipline/experiments_loader/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ExperimentsLoader project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/retailzipline/experiments_loader/blob/master/CODE_OF_CONDUCT.md).
