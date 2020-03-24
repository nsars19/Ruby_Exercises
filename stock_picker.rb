def stock_picker arr
  
  differences = Array.new
  indeces = Array.new
  
  for i in 0..(arr.length - 1)
    for j in i..(arr.length - 1)
      if arr[i] - arr[j] < 0 #&& i < j <<< not needed when
        differences << arr[i] - arr[j] # range of j starts
        indeces << [i, j]              # starts on i
      end
    end
  end

  "#{indeces[differences.index(differences.min)]}"
end

def array_generator(num=rand(100))
  Array.new(num) { |i| (i + 1) * (1 + rand(20)) }
end

test = [17,3,6,9,15,8,6,1,10]
puts stock_picker(test)
puts '*******'
test_array = array_generator 20
puts test_array
puts '*******'
puts stock_picker(test_array)