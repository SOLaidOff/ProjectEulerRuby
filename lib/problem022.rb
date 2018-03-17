=begin
https://projecteuler.net/problem=22

Names scores

Problem 22

Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical
value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

What is the total of all the name scores in the file?

=end

# Things to change for every new problem: number in class name on first and last lines

require_relative 'euler_math'
require 'strscan'

class Problem022 # Equivalent to "Problem022 = Class.new"; i.e. Problem022 is just an instance of the Class class (see https://stackoverflow.com/a/13709911/)
  FILENAME = "resources/p022_names.txt"

  # @name_array = [] # Code works even without this declaration; see SO posts about "instance vars", "class instance vars", "self" and more
  
  def do_problem
    read_input()

    sort_input()

    sum_name_scores()
  end

  def read_input
    @name_array = [] # Without this line, error "in `block (2 levels) in read_input': undefined method `push' for nil:NilClass (NoMethodError)" on next reference of @name_array
      
    File.open(FILENAME, "r") do |file|
      file.each_line do |line| # Not scalable for a larger input, but okay for now
        scanner = StringScanner.new(line)

        while scanner.exist?(/,/) do
          name_with_punctuation = scanner.scan_until(/,/) # Don't forget this won't get the very last name (not followed by a comma)
          name_clean = name_with_punctuation[1..-3]

          @name_array.push(name_clean)
        end

        # Final name
        name_with_punctuation = scanner.rest()
        name_clean = name_with_punctuation[1..-2]

        @name_array.push(name_clean)
      end
    end
  end

  def sort_input()
    @name_array.sort! # Is it cheating to not implement sort by hand?
  end

  def sum_name_scores()
    sum = 0
    counter = 1

    @name_array.each do |name|
      name_sum = 0

      name.split("").each do |letter|
        name_sum += get_letter_val(letter)
      end

      sum += name_sum * counter

      counter += 1
    end

    sum
  end

  def get_letter_val(letter)
    case letter
    when "A", "a"
      1
    when "B", "b"
      2
    when "C", "c"
      3
    when "D", "d"
      4
    when "E", "e"
      5
    when "F", "f"
      6
    when "G", "g"
      7
    when "H", "h"
      8
    when "I", "i"
      9
    when "J", "j"
      10
    when "K", "k"
      11
    when "L", "l"
      12
    when "M", "m"
      13
    when "N", "n"
      14
    when "O", "o"
      15
    when "P", "p"
      16
    when "Q", "q"
      17
    when "R", "r"
      18
    when "S", "s"
      19
    when "T", "t"
      20
    when "U", "u"
      21
    when "V", "v"
      22
    when "W", "w"
      23
    when "X", "x"
      24
    when "Y", "y"
      25
    when "Z", "z"
      26
    else
      0
    end
  end
end

puts problem = Problem022.new.do_problem()