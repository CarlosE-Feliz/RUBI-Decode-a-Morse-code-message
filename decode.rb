@morse = '.-', '-...',	'-.-.',	'-..',	'.',	'..-.',	'--.',	'....',	'..',	'.---',	'-.-',
         '.-..', '--',	'-.', '---',	'--.-',	'.--.',	'.-.',	'...',	'-', '..-',	'...-',
         '.--',	'-..-',	'-.--',	'--..'

@alphabet = 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K',
            'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'

# def decode_char(char)
#   @morse.each_with_index do |m, idx|
#     next unless char == m
#
#     @alphabet.each_with_index do |letter, i|
#       puts(letter) if i == idx
#     end
#   end
# end
# decode_char('.-')


def decode_word(word)
  @@complete = ''
  word.split.each_with_index do |t, _i|
    @morse.each_with_index do |m, idx|
      next unless t == m

      @alphabet.each_with_index do |letter, i|

        @@complete += letter if i == idx
      end
    end
  end
  puts(@@complete)
end

decode_word('-- -.--')
