def word_frequencies(book, word)
  word = word.downcase
  count = 0
  book.split.each do |book_word|
    count += 1 if book_word.downcase == word
  end
  count
end
