class Substring

  def count(text, word)
    final_count = 0
    str = text.clone
    final_count += 1 until str.slice!(word).nil?
    final_count
  end

  def substrings(text, dictionary)
    result_hash = {}
    normal = text.downcase
    dictionary.each {|word| result_hash[word] = count(normal, word) if normal.index(word)}
    result_hash
  end

end
