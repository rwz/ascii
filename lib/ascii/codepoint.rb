require "yaml"

module Ascii

  # The class responsible for translating a Unicode char to its ASCII
  # representation
  class Codepoint
    # @return [Integer] the code of the unicode character
    attr_reader :code

    # @param char [String] the unicode char
    def initialize(char)
      @code = char.unpack("U").first
    end

    # @return [String] an ASCII representation of input
    def decode
      group.at(group_index)
    end

    private

    GROUPS = Hash.new do |hash, group_name|
      filename = File.expand_path("../../../data/#{group_name}.yml", __FILE__)
      hash[name] = YAML.load_file(filename)
    end

    def group
      GROUPS[group_name]
    end

    def group_name
      "x%02x" % (code >> 8)
    end

    def group_index
      code & 255
    end
  end
end
