# Calculator class
class Calculator
  
  attr_reader :grocery_list  


  def initialize(grocery_list)
    @grocery_list = grocery_list
  end

  # calculate the total price function
  def calculate_price
    milk_total = 0
    bread_total = 0
    banana_total = 0
    apple_total = 0

    # loop through the user inputted grocery list to populate total variables
    @grocery_list.each do |article|
      
      if article.downcase.include? "milk"
        milk_total += 1
      elsif article.downcase.include? "bread"
        bread_total += 1
      elsif article.downcase.include? "banana"
        banana_total += 1
      elsif article.downcase.include? "apple"
        apple_total += 1
      end
      
    end
    
    # calculation for raw total
    milk_price = 3.97
    bread_price = 2.17
    banana_price = 0.99
    apple_price = 0.89
    banana_total_cost = banana_total*banana_price
    apple_total_cost = apple_total*apple_price
    
    raw_total_price = (apple_total_cost) + (banana_total_cost) + (milk_total*milk_price) + (bread_total*bread_price)

    # Milk and bread total cost after sales variables
    milk_total_cost = 0
    bread_total_cost = 0

    # methods to calculate sales costs
    if milk_total % 2 == 0
      milk_total_cost = 5 * (milk_total/2)
    else
      milk_total_cost = (5 * (milk_total/2)) + 3.97
    end

    if bread_total < 3
      bread_total_cost = 2.17 * bread_total
    elsif bread_total % 3 == 0 
      bread_total_cost = 6 * (bread_total/3)
    else
      bread_total_cost = (6 * (bread_total/3)) + (2.17 * (bread_total % 3))
    end

    total_actual_price = milk_total_cost + bread_total_cost + banana_total_cost + apple_total_cost
    money_saved = raw_total_price - total_actual_price

    # Making sure all variables have 2 decimal points
    milk_total_cost = "%.2f" % milk_total_cost
    bread_total_cost = "%.2f" % bread_total_cost
    banana_total_cost = "%.2f" % banana_total_cost
    apple_total_cost = "%.2f" % apple_total_cost
    money_saved = raw_total_price -  total_actual_price
    total_actual_price = "%.2f" % total_actual_price
    money_saved = "%.2f" % money_saved
    
    # Ending message
    puts "         Items Purchased Chart"
    puts "Item     Quantity         Price"
    puts "-------------------------------------"
    puts "Bread     #{bread_total}                $#{bread_total_cost}"
    puts "Milk      #{milk_total}                $#{milk_total_cost}"
    puts "Apple     #{apple_total}                $#{apple_total_cost}"
    puts "Banana    #{banana_total}                $#{banana_total_cost}"
    puts
    puts "Total Price : $#{total_actual_price}"
    puts "You saved $#{money_saved} today!"

  end

end
# Intro function to display prices for items
def intro
  puts "         Items for Purchase"
  puts "Item     Unit Price      Sales price"
  puts "-------------------------------------"
  puts "Milk      $3.97           2 for $5.00"
  puts "Bread     $2.17           3 for $6.00"
  puts "Banana    $0.99           "
  puts "Apple     $0.89           "
  puts 
  puts "Please enter all of the items in your list separated by a comma with no space"
end

# Program execution
intro
list = Calculator.new(gets.split",")
list.calculate_price
