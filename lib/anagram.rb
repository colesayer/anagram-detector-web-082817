class Anagram
  require 'pry'

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(matches)
    matches.select do |match|
      match.split("").sort == word_to_letters
    end
  end

  def word_to_letters
    @word.split("").sort
  end

end
