def cypher str, num
  
  str_array = str.split
  shifted_string_array = Array.new
  alphabet = ('a'..'z').to_a
  alphabet_shifted = ('a'..'z').to_a
  upper_alph = ('A'..'Z').to_a
  upper_alph_shifted = ('A'..'Z') .to_a

  num.times do
    alphabet_shifted.push alphabet_shifted.shift
    upper_alph_shifted.push upper_alph_shifted.shift
  end


  str_array.each_with_index do |e, i|

    if e.length > 1
      temp = e.split('')
      temp.each.with_index do |elem, index|
        if elem =~ /[^A-Za-z]/
          temp[index] = elem
        else
          if elem =~ /[A-Z]/
            temp[index] = upper_alph_shifted[upper_alph.index(elem)]
          else  
            temp[index] = alphabet_shifted[alphabet.index(elem)]
          end
        end
      end

      shifted_string_array << temp.join
    else  
      if e =~ /[A-Z]/
        shifted_string_array << upper_alph_shifted[upper_alph.index(e)]
      else
        shifted_string_array << alphabet_shifted[alphabet.index(e)]
      end
    end

    shifted_string_array << ' '
  end

  shifted_string_array.join('')
end

# puts cypher 'abc', 5
puts cypher 'THIS! IS! A! stringy boi...?', 6
puts cypher 'THIS! IS! A! stringy boi...?', 15

def decypher str, num

  str_array = str.split
  shifted_string_array = Array.new
  alphabet = ('a'..'z').to_a
  alphabet_shifted = ('a'..'z').to_a
  upper_alph = ('A'..'Z').to_a
  upper_alph_shifted = ('A'..'Z') .to_a

  num.times do
    alphabet_shifted.unshift alphabet_shifted.pop
    upper_alph_shifted.unshift upper_alph_shifted.pop
  end


  str_array.each_with_index do |e, i|

    if e.length > 1
      temp = e.split('')
      temp.each.with_index do |elem, index|
        if elem =~ /[^A-Za-z]/
          temp[index] = elem
        else
          if elem =~ /[A-Z]/
            temp[index] = upper_alph_shifted[upper_alph.index(elem)]
          else  
            temp[index] = alphabet_shifted[alphabet.index(elem)]
          end
        end
      end

      shifted_string_array << temp.join
    else  
      if e =~ /[A-Z]/
        shifted_string_array << upper_alph_shifted[upper_alph.index(e)]
      else
        shifted_string_array << alphabet_shifted[alphabet.index(e)]
      end
    end

    shifted_string_array << ' '
  end

  shifted_string_array.join('')
end

puts decypher (cypher "THIS! IS! A! stringy boi...?", 6), 6