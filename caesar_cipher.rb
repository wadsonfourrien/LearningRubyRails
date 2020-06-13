# Ruby caesar cypher with while loop

def caesar_cipher(text, numb)
  i = 0
  text_arr = text.chars
  while i < text_arr.length do
    text_arr[i] = text_arr[i].ord + numb
     text_arr[i] += 64 - 90 if text_arr[i] > 90 && text_arr[i] - numb <= 90
     text_arr[i] += 96 - 122 if (text_arr[i] > 122)
    text_arr[i] = text_arr[i].chr
    i += 1
  end
  return text_arr.join
end

caesar_cipher "wadson", 10
