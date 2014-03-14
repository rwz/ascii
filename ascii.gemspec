# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ascii/version"

Gem::Specification.new do |spec|
  spec.name         = "ascii"
  spec.version      = Ascii::VERSION
  spec.authors      = ["Pavel Pravosud"]
  spec.email        = ["pavel@pravosud.com"]
  spec.summary      = "Create an ASCII representation of localized string"
  spec.description  = "This library provides methods to transliterate Unicode characters to an ASCII approximation"
  spec.homepage     = "https://github.com/rwz/ascii"
  spec.license      = "MIT"

  spec.files        = `git ls-files -z`.split("\x0")
  spec.test_files   = spec.files.grep(/^spec/)
  spec.require_path = "lib"
end
