# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: Zac Mitton






# Our Refactored Solution

def bakery_num(num_of_people, fav_food)

  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  raise ArgumentError.new("You can't make that food") if my_list.has_key?(fav_food) == false

  order_qty = num_of_people / my_list[fav_food]
  left = num_of_people % my_list[fav_food]

  pie_qty = left/8
  cake_qty = (left%8)/6
  cookie_qty = (left%8)%6
  
  case fav_food
  when "pie"
    then pie_qty = order_qty
  when "cake"
    then cake_qty = order_qty
  else
    cookie_qty = order_qty
  end

  return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."

end


#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!




#  Reflection 
# This was a fun, challenging but time consuming one. I think it's fair for a messy 
# code like the one DBC gave us.
# Is was easy to undertand what the method was doing as soon as we re arrange the format.
# After understanding the logic of the method we start refactoring.
# Zac is really good on reading logic and finding error. I was suprise how fast he was able
# to find mistakes as soon as we modify the code and didn't work.
# After a couple iterations we were able to right a pretty straight forward code.
# We missed the bonus so I think we'll work on that later this week. Hopefully our code it
# is easy to scale.
# I remember how to use Case. I forgot the syntax of it and but Zac new exactly how to work
# with it.


