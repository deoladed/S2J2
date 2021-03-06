# frozen_string_literal: true

def multiple_of_3_or_5?(num)
  (num % 5).zero? || (num % 3).zero?
end

def sum_of_3_and_5_multiples(num)
  return 'This is not an integer' unless num.is_a? Integer
  multiples = []
  0.upto(num - 1) do |i|
    multiple_of_3_or_5?(i) ? multiples << i : false
  end
  multiples.sum
end

# sum_of_3_and_5_multiples(11)

str = "salut"
p str.split(//)
p str