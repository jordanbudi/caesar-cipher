def caesar_encode(string, shift)
 new_array = []
 shift = (shift.to_i % 26)
 if shift.to_i % 26 == 0
   return string 
 else
   string.each_byte do |byte|
     case byte
     when (65..90)
       new_byte = byte + shift
       if new_byte > 90
         new_byte = (new_byte - 90) + 64
       end
     when (97..122)
       new_byte = byte + shift
       if new_byte > 122
         new_byte = (new_byte - 122) + 96
       end
     else new_byte = byte
     end
       new_array.push(new_byte.chr)
     end
 end
  
  new_array.join("")

end
   
def caesar_decode(string, shift = 3)
 new_array = []
 shift = (shift.to_i % 26)
 if shift.to_i % 26 == 0
   return string 
 else
   string.each_byte do |byte|
     case byte
     when (65..90)
       new_byte = byte - shift
       if new_byte < 65
         new_byte = 90 - (new_byte - 64)
       end
     when (97..122)
       new_byte = byte - shift
       if new_byte < 97
         new_byte = 122 - (96 - new_byte)
       end
     else new_byte = byte
     end
       new_array.push(new_byte.chr)
     end
 end
  
  new_array.join("")
  
end
