# EtudeOp10No6

[![CircleCI](https://circleci.com/gh/k2works/etude_op10_no6.svg?style=svg)](https://circleci.com/gh/k2works/etude_op10_no6)
[![Code Climate](https://codeclimate.com/github/k2works/etude_op10_no6/badges/gpa.svg)](https://codeclimate.com/github/k2works/etude_op10_no6)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/k2works/etude_op10_no6/master/LICENSE.txt)
[![Gem Version](https://badge.fury.io/rb/etude_op10_no6.svg)](https://badge.fury.io/rb/etude_op10_no6)

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/etude_op10_no6`. To experiment with that code, run `bin/console` for an interactive prompt.

[Getting start](./docs/README.md)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'etude_op10_no6'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install etude_op10_no6

## Usage

```bash
g = EtudeOp10No6::Game.new # Create instance

g.add(5) #Set score 
g.add(4)

g.score # Get total score
g.score_for_frame(1) # Get score by frame
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/etude_op10_no6. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

