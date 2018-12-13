require_relative './../santa_helper'
require './code/day'

class Day1 < Day
  # def self.part1
  #   frequency = 0
  #   @data.map do |row|
  #     frequency += row.to_i
  #   end
  #   puts "result #{frequency}"
  # end

  @frequencyList = []
  @frequency = 0
  def self.part2
    result2 = nil
    @frequency = 0
    while result2.nil?
      puts "runing part2"
      result2 = searching()
      puts "and #{result2.length}"
    end

  end

  def self.searching
    @data.map do |row|
      @frequency += row.to_i
      if is_duplicate?(@frequency)
        puts "hey i found a duplicate #{@frequency}"
        return @frequency
      else
        @frequencyList << @frequency
      end
    end
  end

  def self.is_duplicate?(frequency)
    puts "inside duplicate #{frequency}" if @frequencyList.include?(frequency)
    @frequencyList.include?(frequency)
  end
end

