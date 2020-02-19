class PigLatinizer
  attr_accessor :user_text
  
  def initialize(user_text)
    @user_text= user_text
  end 
  
  def text_to_arr
  end 
  
  def piglatinize_word(word)
    if word.split.first.match(/[aeiou]/)
      word + "way"
    else
      
    end 
  end 
  
  def piglatinize_text
  end 
end 