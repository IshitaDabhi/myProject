
	class TypesOfWays

		def solve(n)
  			nums = 1.upto(n).to_a
   			goal = n
    		ways = Array.new
   		    ways << 1
   		    goal.times do
   				   ways << 0
    		end
    		nums.each do |num|
   				  num.upto(goal) do |x|
    			  	 ways[x] += ways[x-num]
   				  end

  			 end
    	  return ways[goal]-1
		end
 end
		

puts "Enter a number which can be expressed as a combination of atleast 2 no."
	x=gets.chomp
	
	y=TypesOfWays.new
	x=y.solve(x.to_i)
	puts "Total number of ways ------>"
	puts x.to_s