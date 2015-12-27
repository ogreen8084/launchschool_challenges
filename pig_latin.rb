# pig_latin.rb

# convert words and phrases to pig latin
class PigLatin
  VOWELS = %w(a e i o u)
  SPECIAL_BEGINNING = %w(yt xr)
  def self.translate(w)
    word = w
    new_phrase = ''
    new_word = []
    if word.split(' ').length > 1
      word.split(' ').each do |ind|
        new_phrase << translate(ind) + ' '
      end
      return new_phrase[0, new_phrase.size - 1]
    end

    if VOWELS.include?(word[0]) || SPECIAL_BEGINNING.include?(word[0, 2])
      new_word = word + 'ay'
    elsif word[0, 2] == 'qu'
      new_word = word[2, word.size - 1] + word[0, 2] + 'ay'
    elsif word[0, 3] == 'squ'
      new_word = word[3, word.size - 1] + word[0, 3] + 'ay'
    else
      counter = 0
      word.split('').each do |x|
        if VOWELS.include?(x)
          break
        else
          new_word << x
          counter += 1
        end
      end
      new_word = word[counter, word.size - 1] + new_word.join('') + 'ay'
    end
    new_word
  end
end
