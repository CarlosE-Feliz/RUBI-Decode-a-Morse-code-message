@morse = '·–', '–···',	'–·–·',	'–··',	'·',	'··–·',	'––·',	'····',	'··',	'·–––',	'–·–',
  '·–··','––',	'–·', '–––',	'––·–',	'·––·',	'·–·',	'···',	'–', '··–',	'···–',
  '·––',	'–··–',	'–·––',	'––··'

@alphabet = 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K',
  'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'

def decode_char(char)
  @morse.each_with_index do |m, idx|
    if char == m
      @alphabet.each_with_index { |letter,i |
        if i == idx
          puts(letter)
        end}
    end
    end
end
decode_char('··–·')

