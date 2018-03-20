# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  return my_words if my_words == nil || my_words.length < 2
  index = 0
  word_start = 0
  while index <= my_words.length
    if my_words[index] == " " || my_words[index] == nil
      my_words = reverse_helper(word_start, index - 1, my_words) if word_start > 0
      word_start = 0
    else
      word_start += 1
    end
    index += 1
  end
  return my_words
end

def reverse_helper(word_start, index, my_words)
  (word_start / 2).times do |count|
    temp = my_words[index - word_start + 1 + count]
    my_words[index - word_start + 1 + count] = my_words[index - count]
    my_words[index - count] = temp
  end
  return my_words
end
