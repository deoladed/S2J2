# frozen_string_literal: true

def caesar_cipher(str, num)
  cipher = []
  lettres = str.split(//).map(&:ord)

  lettres.each do |mot|
    if mot >= 32 && mot <= 64
      cipher << mot.chr
    elsif mot >= 91 && mot <= 96
      cipher << mot.chr
    elsif mot >= 123 && mot <= 126
      cipher << mot.chr
    else
      clef = mot + num
      clef > 90 && clef < 96 ? clef -= 26 : clef
      clef > 122 && clef < 128 ? clef -= 26 : clef
      cipher << clef.chr
    end
  end
  p cipher.join
end

caesar_cipher('abcde ABCDE uvwxyz UVWXYZ', 5)
caesar_cipher('What a string!', 5)

# Autre versiom
# def caesar_cipher(str, num = 5)
#   cipher = []
#   lettres = str.split(//).map(&:ord)
#   lettres.each do |mot|
#     clef = mot + num
#     if clef >= 65 && clef <= 90
#       cipher << clef.chr
#     elsif clef > 90 && clef < 96
#       clef -= 26
#       cipher << clef.chr
#     elsif clef >= 97 && clef <= 122
#       cipher << clef.chr
#     elsif  clef > 122 && clef < 128
#       clef -= 26
#       cipher << clef.chr
#     else
#       cipher << mot.chr
#     end
#   end
#   p cipher.join
# end
