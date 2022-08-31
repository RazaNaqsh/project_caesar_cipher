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
        letter_shift.push(ord+shift)
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


# now current problems that needs to be tackled are - , starting from intial letters when no more letters ahead(for caps letter and small letters),
