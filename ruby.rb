
def cost_of_fruits (a,b,c)
    fruit_occurence_array = []
    discount_array = []
    
    # iterating over a.tally(a hash consisting of the occurence of each and every fruit)
    a.tally.each do |key,value|
      # Getting the value and adding it to the fruit_occurence _array
      fruit_occurence_array.push(value)
    end
  
    # Iterating over c parameter with is a hash and pushing the elements to an array
    c.each do |key,value|
      discount_array.push(value)
    end
  
      # Calculating the discount
  
      # Getting the difference between the two
    
    total_cost = (fruit_occurence_array.zip(b).map{|x, y| x * y}.reduce(:+)) - (fruit_occurence_array.zip(b).map{|x, y| x * y}.zip(discount_array.map{|a| a.to_f/100}).map{|x, y| x * y}.reduce(:+).to_i)
  
    puts total_cost
end
  
cost_of_fruits(["apple","orange","banana","apple","banana"],[50,40,30],{ "apple" => 10, "orange" => 20, "banana" => 5 })