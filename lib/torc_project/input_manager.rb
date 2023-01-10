# frozen_string_literal: true

module TorcProject
  class InputManager
    attr_accessor :file

    def initialize(filename)
      @file = File.open(filename)
    end

    def self.run
      output = []
      file.readlines(chomp: true).each do |line|
        output << Good.new(line)
      end
      output
    end
  end
end
