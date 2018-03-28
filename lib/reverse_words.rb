# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  return my_words if my_words == nil || my_words.length < 2
  curr_index = 0
  letter_count = 0
  while curr_index <= my_words.length
    if my_words[curr_index] == " " || my_words[curr_index] == nil
      reverse_helper(curr_index, curr_index - letter_count, my_words) if letter_count > 0
      letter_count = 0
    else
      letter_count += 1
    end
    curr_index += 1
  end
  return my_words
end


def reverse_helper(string_length, start_index, my_words)
  ((string_length - start_index) / 2).times do |count|
    temp = my_words[start_index + count]
    my_words[start_index + count] = my_words[string_length - count - 1]
    my_words[string_length - count - 1] = temp
  end
end
