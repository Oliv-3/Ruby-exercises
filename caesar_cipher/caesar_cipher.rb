class CaesarCipher

  def shift_char(char, int)
    return char.succ[0] if int == 1

    shift_char(char.succ[0], (int - 1)) 
  end

  def shiftable?(char)
    char.match(/[[:alpha:]]/)
  end

  def shift(char, int)
    shiftable?(char) ? shift_char(char, int) : char
  end

  def translate(raw, int)
    raw.chars.map {|char| shift(char, int)}.join
  end
end