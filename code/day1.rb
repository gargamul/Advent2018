require_relative './../santa_helper'
require './code/day'

class Day1 < Day
  def self.part1
    frequency = 0
    @data.map do |row|
      frequency += row.to_i
    end
    puts "result #{frequency}"
  end

  @frequencyList = []
  @cumulative_frequency = 0
  def self.part2
    # @data = [+3, +3, +4, -2, -4]
    @cumulative_frequency = 0
    t1 = Time.now
    puts "running part2"
    result2 = searching()
    t2 = Time.now
    puts "total time #{t2-t1}"
    puts "result #{result2}"
  end

  def self.searching
    answer = nil
    net_time = 0

    while answer.nil?
      @data.map do |frequency|
        @cumulative_frequency += frequency.to_i
        t3 = Time.now
        check = @frequencyList.include?(@cumulative_frequency)
        t4 = Time.now
        net_time += t4 - t3
        if check
          answer = @cumulative_frequency
          break
        else
          @frequencyList << @cumulative_frequency
        end
      end
    end

    puts "time taken by include  #{net_time}"

    return answer
  end
end

