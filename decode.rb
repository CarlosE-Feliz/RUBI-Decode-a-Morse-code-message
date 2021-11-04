def decode_char(char)
  @morse = '.-', '-...',	'-.-.',	'-..',	'.',	'..-.',	'--.',	'....',	'..',	'.---',	'-.-',
    '.-..', '--',	'-.', '---',	'--.-',	'.--.',	'.-.',	'...',	'-', '..-',	'...-',
    '.--',	'-..-',	'-.--',	'--..'
  @alphabet = 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K',
    'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
  index = @morse.find_index(char)
  @alphabet[index]
end

def decode_word(word)
  word_split = word.split
  array = word_split.map do |word|
    if word == '/'
      ' '
    else
      decode_char(word)
    end
  end
  array.join
end

def decode(phr)
  sentence = phr.split('   ')
  array = sentence.map { |word| decode_word(word) }
  array.join(' ')
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')