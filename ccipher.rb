
def ceaser_cipher(word,shift)
    shifted = ""
    for i in 0..word.length-1 do
        character = word[i].ord
        if(word[i].match?(/[A-Za-z]/))
            if (character+shift>122 && character.chr.downcase == character.chr) 
                character += shift
                character = character - 122 + 96  
            elsif (character+shift>90 && character.chr.upcase == character.chr)
                puts(character.chr)
                character += shift
                puts(character.chr)
                character = character - 90 + 64
                puts(character.chr)
            end
        end
        shifted += (character).chr
    end
    return shifted
end

puts(ceaser_cipher("Xylophone!",22))
