@morse = '.-', '-...',	'-.-.',	'-..',	'.',	'..-.',	'--.',	'....',	'..',	'.---',	'-.-',
         '.-..', '--',	'-.', '---',	'--.-',	'.--.',	'.-.',	'...',	'-', '..-',	'...-',
         '.--',	'-..-',	'-.--',	'--..'

@alphabet = 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K',
            'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'

def decode_char(char)
  @morse.each_with_index do |m, idx|
    next unless char == m

    @alphabet.each_with_index do |letter, i|
      puts(letter) if i == idx
    end
  end
end

def decode_word(word)
  full_word = ''
  split_word = word.split
  split_word.each_with_index do |t, _i|
    @morse.each_with_index do |m, idx|
      next unless t == m

      @alphabet.each_with_index do |letter, i|
        full_word += letter if i == idx
      end
    end
  end
  puts(full_word.chars.join(' '))
end
