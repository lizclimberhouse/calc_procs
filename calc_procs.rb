
require 'pry'
@add = Proc.new { |num1, num2| num1 + num2 }
@minus = Proc.new { |num1, num2| num1 - num2 }
@divide = Proc.new { |num1, num2| num1 / num2 }
@multiply = Proc.new { |num1, num2| num1 * num2 }

# @add = -> (num1, num2) { num1 + num2 } # my lambda's dont check the params passed in for some reason
# @minus = lambda { |num1, num2| num1 - num2 }
# @divide = lambda { |num1, num2| num1 / num2 }
# @multiply = lambda { |num1, num2| num1 * num2 }

def start_op_1
  print "hello, type a number: "
  user_in1 = gets.strip.to_i
  puts "type an operator: "
  user_op = gets.strip
  puts "type another number: "
  user_in2 = gets.strip.to_i
  math(user_in1, user_op, user_in2)
end

def math(user_in1, user_op, user_in2)
  # binding.pry
  case user_op
  when '+'
    total = @add.call(user_in1, user_in2)
  when '-'
    total = @minus.call(user_in1, user_in2)
  when '/'
    total = @divide.call(user_in1, user_in2)
  when '*'
    total = @multiply.call(user_in1, user_in2)
  end
  puts total
end

def start_op_2
  print "hello, type a math equation: "
  user_in = gets.strip
  arr = user_in.split(' ')
  user_in1 = arr[0].to_i
  user_op = arr[1]
  user_in2 = arr[2].to_i
  math(user_in1, user_op, user_in2)
end

start_op_2
# start_op_1

