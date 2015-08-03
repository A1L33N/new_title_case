class String
  define_method(:title_case) do
    designated_words = ["is", "and", "but", "the", "as", "of"]
    new_words = self.split()
    new_words.first().capitalize!()

    new_words.each() do |word|
      if designated_words.include?(word)
        word.downcase!()
      else
        word.capitalize!()
      end
    end
    new_words.join(" ")
  end
end
