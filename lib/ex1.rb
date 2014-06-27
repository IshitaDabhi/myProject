

class Add_Array
	def Sum_array(n)
		
		arr=(1...n).find_all {|x| x % 3 == 0 || x % 5 == 0 }
	end
	def SumofArray(arr)
		sum = 0
		i = 0 
		while i<arr.count
			sum += arr[i]
			i += 1
		end
		sum
	end
end

puts "Enter a number :: "
x= gets.chomp

a_a=Add_Array.new
arry=a_a.Sum_array(Integer(x))
sum=a_a.SumofArray(arry)
puts "SUM upto that number is -->"
puts sum.to_s

