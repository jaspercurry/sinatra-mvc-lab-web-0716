class PigLatinizer
  attr_accessor :text

def to_pig_latin(text)
  piglatinize(text)
end

def piglatinize(text)
  vowels = "aeiou"
  cons = "bcdfghjklmnpqrstvwxyz"
  word_array = text.split(" ")
  new_array = []
    word_array.each do |word|
      if cons.include?(word[0].downcase) && cons.include?(word[1].downcase) && cons.include?(word[2].downcase) && vowels.include?(word[3].downcase)
        new_array << "#{word[3..-1]}#{word[0..2]}ay"
      elsif cons.include?(word[0].downcase) && cons.include?(word[1].downcase) && vowels.include?(word[2].downcase)
        new_array << "#{word[2..-1]}#{word[0..1]}ay"
      elsif vowels.include?(word[0].downcase)
        new_array << "#{word}way"
      else
        new_array << "#{word[1..-1]}#{word[0]}ay"
      end
    end
   new_array.join(" ")
end
end


#== "a" || word[0].downcase == "e" || word[0].downcase == "i" || word[0].downcase == "o" || word[0].downcase == "u"
