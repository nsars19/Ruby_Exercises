def substrings str, arr 

  return_hash = {}

  arr.each_with_index do |e|
    match_count = 0
    for x in 0..(e.length - 1)
      for y in 0..(e.length)
        if str.slice(x, y) == e
          if return_hash.keys.include? e
            return_hash[e] = return_hash[e] + 1
          else
            match_count += 1
            return_hash[e] = match_count
          end
        end
      end
    end
  end

  return_hash
end 

dictionary = [
              "below",
              "down",
              "go",
              "going",
              "horn",
              "how",
              "howdy",
              "it",
              "i",
              "low",
              "own",
              "part",
              "partner",
              "sit"
]
test_array = [
              "below",
              "bel",
              "low",
              "elow",
              "belo",
              "low",
              "low",
              "low",
              "bel",
              "elow"
]

p substrings("below", dictionary)
puts "*****"
p substrings("below", test_array)       