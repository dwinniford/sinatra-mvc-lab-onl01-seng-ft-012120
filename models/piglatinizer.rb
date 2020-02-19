class PigLatinizer
  attr_accessor :user_text
  
  def initialize
    @user_text= user_text
  end 
  
  def piglatinize(user_text)
    piglatinize_text(@user_text.split(" "))
  end 
  
  # def text_to_arr(text)
  #   @text_arr = @user_text.split(" ")
  # end 
  
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
  
  def piglatinize_text(arr)
    arr.map do |word|
      piglatinize_word(word)
    end.join(" ") 
  end 
  
end 


