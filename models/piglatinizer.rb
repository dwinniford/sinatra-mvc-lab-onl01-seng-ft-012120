class PigLatinizer
  attr_accessor :user_text
  
  def initialize(user_text)
    @user_text= user_text
  end 
  
  def text_to_arr
  end 
  
  def piglatinize_word(word)
    if word.chars.first.match(/[aeiou]/)
      word + "way"
    else
      arr = word.chars
      prefix_arr = []
      arr.each do |char|
        break if char.match?(/[aeiou]/) 
        prefix_arr << char 
      end 
      arr.shift(prefix_arr.length)
      arr.join + prefix_arr.join + "ay"
    end 
  end 
  
  def piglatinize_text
  end 
end 


