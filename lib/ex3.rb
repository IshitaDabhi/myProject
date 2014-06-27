
class Toys
	def initializeMoney()
		puts "Amount of money you have!!??"
	money=gets.chomp
end
	
	def initializeToys()
		puts "No.of toys?"
		num_toys= gets.chomp
	end
	def initializeArray(num_toys)
		

		puts "Please enter only the prices of each toy-- >"
		arry=[]
			i=0
		while i < num_toys.to_i
				puts "Toy No. #{i} Price"
				price=gets.chomp
		
				arry << price.to_i
			i=i+1
	end
	arry
end
	
		def bubble_sort(arry)
  return arry if arry.size <= 1 # already sorted
  swapped = true
  while swapped do
    swapped = false
    0.upto(arry.size-2) do |i|
      if arry[i] > arry[i+1]
        arry[i], arry[i+1] = arry[i+1], arry[i] # swap values
        swapped = true
      end
    end    
  end

  arry
end

	def maxToys(money,arry,num_toys)
		
		no_of_Toys = 0
		x=0
		y=0
		
		i=0
		while i <= num_toys.to_i
				if(money-arry[i] >= 0)
					then
					money -= arry[i]
					no_of_Toys = no_of_Toys+1
					i+=1
				else
					break
				end
		end
		no_of_Toys
	end


end

maxtoys=Toys.new


	money =maxtoys.initializeMoney
	num_toys=maxtoys.initializeToys
	arry = maxtoys.initializeArray(num_toys)
	arrray=maxtoys.bubble_sort(arry)
	#puts "<---Array is--->"
	#puts arry

	
	
		total=maxtoys.maxToys(money.to_i,arrray,num_toys.to_i)
		puts "No. of toys which can be bought with #{money} is ->"
	puts total