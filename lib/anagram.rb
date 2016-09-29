class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(possible_anagram_array)
    word_array = @word.split("").sort!
    possible_anagram_array.select {|anagram_word| anagram_word.split("").sort! == word_array}
  end

end
