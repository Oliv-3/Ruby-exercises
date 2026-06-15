class CaesarCipher
    def shift(char, int)
        return char.succ[0] if int == 1

        shift(char.succ[0], (int - 1)) 
    end

    def shiftable?(char)
        char.match(/[[:alpha:]]/)
    end

    def translate(raw, int)
        raw.chars.map {|char| shiftable?(char) ? shift(char, int) : char}.join
    end
end