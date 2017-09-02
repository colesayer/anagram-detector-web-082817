class Anagram
  require 'pry'

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(matches)
    matches.select do |match|
      letters_from_word(match) == letters_from_word(@word)
    end
  end

  def letters_from_word(entry)
    entry.split("").sort
  end


end
