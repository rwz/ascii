require "ascii/unidecoder"
require "ascii/version"

module Ascii
  extend self

  def process(str)
    Unidecoder.new(str).to_ascii
  end
end
