# piglatin2.rb

# just practicing other solutions
# class PigLatin
#   def self.translate(words)
#     words.split.map do |word|
#       if %w(a e i o u).include?(word[0].downcase)
#         word + 'ay'
#       elsif %w(sch thr).include?(word[0, 3].downcase)
#         word[3, word.length] + word[0, 3] + 'ay'
#       elsif 'qu' == word[1, 2].downcase
#         word[3, word.length] + word[0, 3] + 'ay'
#       elsif %w(ye xe).include?(word[0, 2].downcase)
#         word[1, word.length] + word[0] + 'ay'
#       elsif %w(yt xr).include?(word[0, 2].downcase)
#         word + 'ay'
#       elsif %w(ch qu th).include?(word[0,2].downcase)
#         word[2, word.length] + word[0, 2] + 'ay'
#       else
#         word[1, word.length] + word[0] + 'ay'
#       end
#     end.join(' ')
#   end
# end  
# differences, splits the word, so it doesn't matter if it is a phrase or one word
# just uses the words to splice the word, not iterating through letters

# def self.translate(words)
#   translated_word = ''
#   words.split(' ').each do |word|
#     if word[0] =~ /[aeiouAEIOU]/ | word[0..1] =~ /(yt|xr)/
#       translated_word << word + 'ay'
#     elsif word[0..2] !~ /[aeiouAEIOU]+/ || (word[0..1] !~ /[aeiouAEIOU]+/ && word[2] =~ /u/)
#       translated_word << word[3..-1] + word[0..2] + 'ay'
#     elsif word[0] =~ /r/
#       translated_word << word[1..-1] + word[0] + 'ay'
#     elsif word[0..1] !~ /[aeiouAEIOU]+/ || (word[0] !~ /[aeiouAEIOU]/ &&word[1] =~ /u/)
#       translated_word << word[2..-1] + word[0..1] + 'ay'
#     else
#       translated_word << word[1..2] + word[0] + 'ay'
#     end
#   end
#   translated_word.rstrip
# end

class PigLatin

  def self.translate(words)
    translated_word = ''
    words.split(' ').each do |word|
      if word[0] =~ /[aeiouAEIOU]/ || word[0..1] =~ /(yt|xr)/
        translated_word << word + 'ay '

      elsif word[0..2] !~ /[aeiouAEIOU]+/ || ( word[0..1] !~ /[aeiouAEIOU]+/ && word[2] =~ /u/ )
        translated_word << word[3..-1] + word[0..2] + 'ay '

      elsif word[0] =~ /r/
        translated_word << word[1..-1] + word[0] + 'ay '

      elsif word[0..1] !~ /[aeiouAEIOU]+/ || (word[0] !~ /[aeiouAEIOU]/ && word[1] =~ /u/ )
        translated_word << word[2..-1] + word[0..1] + 'ay '

      else
        translated_word << word[1..-1] + word[0] + 'ay '
      end
    end
    translated_word.rstrip
  end
end

