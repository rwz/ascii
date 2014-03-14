require "ascii/codepoint"

module Ascii

  # The class resposible for generating ASCII representation of the
  # given string
  class Unidecoder
    attr_reader :input

    # @param input [String] string to process
    def initialize(input)
      @input = input.to_s
    end

    # Processes input string and returns ASCII
    #
    # @return [String] An ASCII approximation of input string
    def to_ascii
      input.gsub(/[^\x00-\x7f]/u, &method(:decode)).strip
    end

    private

    def decode(char)
      Codepoint.new(char).decode
    end
  end
end
