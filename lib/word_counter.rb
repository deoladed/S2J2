# frozen_string_literal: true

def word_counter(string, dictionary)
  result = {}
  phrasearr = string.split
  phrasearr.each do |mot|
    dictionary.each do |i|
      if mot.downcase.include?(i)
        if result[i].nil? == true
          result[i] = 1
        else
          result[i] += 1
        end
      end
    end
  end
  result
end

# dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "own", "part", "partner", "sit"]
# dictionary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

dictionary = File.read('insultes.txt').split
string = File.read('shakespeare.txt')

word_counter(string, dictionary)
