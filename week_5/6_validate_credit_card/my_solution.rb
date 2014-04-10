# U2.W5: Class Warfare, Validate a Credit Card Number


# This challenge was worked on by Seba and Sam Davis.

# 2. Pseudocode

# Input: Integer of hopefully 16 digits.
# Output: Boolean of true of false, that print true if our input is a valid CC number or false otherwise.
# Steps:
# Initialize the class with an integer and raise error if the length of the number is not 16 digits long
# Define a method check_card
# In the body of the method: 
# Define a varible name it number_arr, that will be an array that will contain each digit as an element.
# Define an empty array step_1 that will hold the result of the iterations over number_arr
# Iterate every digit of the number and double every other digit starting with the second to last digit.
# for every number inside the array. If any element is a double digit number push into an empty array each
# of does digits individually. Otherwise push the single digit element how it is to the array step_1.
# Define a variable sum that is equal to the sum of each element inside the array. 
# Return true if sum is divisible by 10 and false otherwise.


# 3. Initial Solution

class CreditCard

  def initialize (number)
    credit_card_len = number.to_s.length
    raise ArgumentError.new("Your Credit Card number it's incorrect.") if (credit_card_len > 16 || credit_card_len < 16)
    @number = number
  end

  def check_card

    number_arr = @number.to_s.split(//).map { |x| x.to_i }

    step_1 = []
    i = number_arr.length - 1

    while i >= 0
      if i % 2 == 0
        dbl_dgt = (number_arr[i] * 2)
        if dbl_dgt >= 10
          dbl_dgt = dbl_dgt.to_s.split(//).map { |x| x.to_i }
          step_1 << dbl_dgt.pop
          step_1 << dbl_dgt.pop
        else
          step_1 << dbl_dgt
        end
      else
        step_1 <<  number_arr[i]
      end
      i -= 1
    end

    sum = step_1.inject {|sum, x| sum += x}

    if sum % 10 == 0
      return true
    else
      return false
    end

  end

end


# 4. Refactored Solution

class CreditCard
    
  def initialize (number)

    credit_card_len = number.to_s.length
    raise ArgumentError.new("Your Credit Card number it's incorrect.") if (credit_card_len > 16 || credit_card_len < 16)
    @number = number

  end
  
  def check_card
      
    number_arr = @number.to_s.split(//).map { |x| x.to_i }      
    step_1 = []
    i = number_arr.length - 1
      
    while i >= 0
      if i % 2 == 0
        dbl_dgt = (number_arr[i] * 2)
        if dbl_dgt >= 10
            dbl_dgt = dbl_dgt.to_s.split(//).map { |x| x.to_i }
            step_1 << dbl_dgt.pop << dbl_dgt.pop
        else
            step_1 << dbl_dgt
        end
      else
        step_1 <<  number_arr[i]
      end
      i -= 1
    end
      
    sum = step_1.inject {|sum, x| sum += x}     
    return true if sum % 10 == 0
    return false if sum % 10 != 0
      
  end
    
end


# 1. DRIVER TESTS GO BELOW THIS LINE

begin
    CreditCard.new(11111111111111112)
    rescue ArgumentError => err
    fail = err.message
end
p fail == "Your Credit Card number it's incorrect."

card = CreditCard.new(4408041234567893)
p card.check_card == true

card = CreditCard.new(4408041234567892)
p card.check_card == false


# 5. Reflection 
# inject
# logic
# raising error
# solving all in one step_1
# i = number_arr.length -1 was smart in order to iterate over it