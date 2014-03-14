# Ascii
[![Gem Version](https://img.shields.io/gem/v/ascii.svg)][gem]
[![Build Status](https://img.shields.io/travis/rwz/ascii.svg)][travis]
[![Code Climate](https://img.shields.io/codeclimate/github/rwz/ascii.svg)][codeclimate]
[gem]: https://rubygems.org/gems/ascii
[travis]: http://travis-ci.org/rwz/ascii
[codeclimate]: https://codeclimate.com/github/rwz/ascii

This library provides method to transliterate Unicode characters to an ASCII
approximation.

The functionality in this library was originally written by [Russel Norris](http://github.com/rsl)
for his [Stringex library](http://github.com/rsl/stringex). This gem is an
extraction of the Unicode transliteration functionality from Stringex into a
separate library.

The Unidecoder component of Stringex is itself a port of Sean M. Burke's
[Unidecode](http://search.cpan.org/dist/Text-Unidecode/lib/Text/Unidecode.pm)
Perl module.

## Installation

Add this line to your application's Gemfile:

    gem 'ascii'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ascii

## Usage

```ruby
Ascii.process("Привет, мир!") # => "Priviet, mir!"
Ascii.process("你好") # => "Ni Hao"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
