def reverser(an_array)
    n = an_array.length

    (n/2).times do
        |i|
        a = an_array[i]
        an_array[i] = an_array[n - 1 - i]
        an_array[n - 1 - i] = a
    end
end

test = [0,1,2,3]

print test

puts

reverser(test)

print test

puts

test2 = [0, 1, 2, 3, 4]

print test2

puts

reverser(test2)

print test2

puts