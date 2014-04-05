def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") 
  decoded_sentence = [] 
  cipher = {"e" => "a",   
            "f" => "b",  
            "g" => "c",   
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z",
            "@" => " ",
            "#" => " ",
            "$" => " ",
            "%" => " ",
            "^" => " ",
            "&" => " ",
            "*" => " ",
            }
  input.each do |x| 
    
    found_match = false  
    
    cipher.each_key do |y| 
      if x == y  
        decoded_sentence << cipher[y] 
        found_match = true 
        break 
      end 
    end
    
     decoded_sentence << x  unless found_match
      
  end
  
  decoded_sentence = decoded_sentence.join("") 
  
 
  if decoded_sentence.match(/\d+/) 
     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 }
  end  
  
  return decoded_sentence
end


# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
p north_korean_cipher("efghi") == "abcde"
p north_korean_cipher("100000") == "1000"
p north_korean_cipher("xshec%mw@jvmhec.") == "today is friday."
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")