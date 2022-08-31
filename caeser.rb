text = 'abc efg'
split_text = text.split('')
  ord_conv=[]

split_text.each do |letter|
  ord_conv.push(letter.ord)
end

letter_shift = []
shift = 2

ord_conv.each do |ord|
  letter_shift.push(ord+shift)
end

p letter_shift

shifted_letters = []

letter_shift.each do |letter|
  shifted_letters.push(letter.chr)
end

p shifted_letters

shifted_text = shifted_letters.join()
p shifted_text
