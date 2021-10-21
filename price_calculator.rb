class Calculator
  
  attr_reader :grocery_list  


  def initialize(grocery_list)
    @grocery_list = grocery_list
  end

  def calculate_price
    milk_total = 0
    bread_total = 0
    banana_total = 0
    apple_total = 0

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
    puts milk_total
    puts banana_total
    puts apple_total
    puts bread_total

  end

end

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

intro
list = Calculator.new(gets.split",")
list.calculate_price
