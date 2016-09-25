require 'rubygems'
require 'bundler/setup'

class Sentence
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def reverse
    parsed_words = @text.split(' ')
    period = false

    last_word = parsed_words[-1]
    if last_word && last_word.end_with?('.')
      last_word.chop!
      period = true
    end

    words = parsed_words.reverse
    "#{words.join(' ')}#{'.' if words.any? && period}"
  end
end
