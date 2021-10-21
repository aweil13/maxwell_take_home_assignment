class Calculator
  
  attr_reader :grocery_list  


  def initialize(grocery_list)
    @grocery_list = grocery_list
  end

  def calculate_price


  end

end

def intro
  puts "         Items for Purchase"
  puts "Item     Unit Price      Sales price"
  puts "-------------------------------------"
  puts "Milk      $3.97           2 for $5.00"
  puts "Bread     $2.17           3 for $6.00"
  puts "Banana    $0.99           "
  puts "Apple     $0.89            "
  puts ""
  puts "Please enter all of the items in your list separated by a comma with no space"
end

intro
list = gets


