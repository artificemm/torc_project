# frozen_string_literal: true

module TorcProject
  class InputManager
    attr_accessor :file, :data

    def initialize(filename)
      @file = File.open(filename)
      @data = []
    end

    def run
      @file.readlines(chomp: true).each do |line|
        @data << Good.new(line)
      end
      @data
    end
  end
end
