x = File.open "1.txt", "r"
y = File.open "2.txt", "r"

arr   = []
arr2 = []

while (line = x.gets)

	arr << line

end

while (line = y.gets)

	arr2 << line

end

y.close
x.close

@z = File.open("result.txt", "w")

@z.write  (arr & arr2).join.strip


@z.close

@z = File.open("result.txt", "r")

arr3 = []

while (line = @z.gets)

	arr3 << line

end

puts arr3.size