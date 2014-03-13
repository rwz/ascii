require "ascii/codepoint"

module Ascii
  class Unidecoder
    attr_reader :input

    def initialize(input)
      @input = input.to_s
    end

    def to_ascii
      input.gsub(/[^\x00-\x7f]/u, &method(:decode))
    end

    private

    def decode(char)
      Codepoint.new(char).decode
    end
  end
end
