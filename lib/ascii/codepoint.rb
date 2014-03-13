require "yaml"

module Ascii
  class Codepoint
    attr_reader :code

    GROUPS = Hash.new do |hash, group_name|
      filename = File.expand_path("../../../data/#{group_name}.yml", __FILE__)
      hash[name] = YAML.load_file(filename)
    end

    def initialize(char)
      @code = char.unpack("U").first
    end

    def decode
      group.at(group_index)
    end

    private

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
