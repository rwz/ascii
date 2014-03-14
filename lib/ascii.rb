require "ascii/unidecoder"
require "ascii/version"

# The main module of the gem, exposes only <tt>process</tt> method.
# Can be mixed into other classes.
module Ascii
  extend self

  # Generates the approximate ASCII repsentation of the given
  # string
  #
  # @param str [String] The string you want to approximate
  # @return [String] The ASCII approximation of the input string
  def process(str)
    Unidecoder.new(str).to_ascii
  end
end
