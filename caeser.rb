# input text here
text = 'abc efg'
shift = 2
split_text = text.split('')

  ord_conv=[]

# fill letters to be converted
split_text.each do |letter|
  ord_conv.push(letter.ord)
end

letter_shift = []

ord_conv.each do |ord|
    if ord.between?(65,90) || ord.between?(90,122)
        if ord + shift > 90 && ord <= 90
            large_limit_cross = (ord + shift) - 90
            letter_shift.push(64 + large_limit_cross)
          elsif ord + shift > 122 && ord > 97
            small_limit_cross = (ord + shift) - 122
            letter_shift.push(96 + small_limit_cross)
          else
            letter_shift.push(ord + shift)
          end
      else
        letter_shift.push(ord)
      end
end

p letter_shift

shifted_letters = []

letter_shift.each do |letter|
  shifted_letters.push(letter.chr)
end

p shifted_letters

shifted_text = shifted_letters.join()
p shifted_text

