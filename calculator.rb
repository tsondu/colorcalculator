require 'colorize'

class String
  def black; "\e[30m#{self}\e[0m" end
  def red; "\e[31m#{self}\e[0m" end
  def green; "\e[32m#{self}\e[0m" end
  def brown; "\e[33m#{self}\e[0m" end
  def blue; "\e[34m#{self}\e[0m" end
  def magenta; "\e[35m#{self}\e[0m" end
  def cyan; "\e[36m#{self}\e[0m" end
  def gray; "\e[37m#{self}\e[0m" end
 
  def bg_black; "\e[40m#{self}\e[0m" end
  def bg_red; "\e[41m#{self}\e[0m" end
  def bg_green; "\e[42m#{self}\e[0m" end
  def bg_brown; "\e[43m#{self}\e[0m" end
  def bg_blue; "\e[44m#{self}\e[0m" end
  def bg_magenta; "\e[45m#{self}\e[0m" end
  def bg_cyan; "\e[46m#{self}\e[0m" end
  def bg_gray; "\e[47m#{self}\e[0m" end
 
  def bold; "\e[1m#{self}\e[22m" end
  def italic; "\e[3m#{self}\e[23m" end
  def underline; "\e[4m#{self}\e[24m" end
  def blink; "\e[5m#{self}\e[25m" end
  def reverse_color; "\e[7m#{self}\e[27m" end
end

#CHOOSE CALCULATOR
puts "Choose a calculator.".bold
puts "Four function calculator or color calculator?".bold
user_choose_calculator = gets.chomp.downcase
puts " "

def addition(first_number, second_number)
        return first_number + second_number
    end
    
    # puts addition(user_first_number, user_second_number)
    
    def subtraction(first_number, second_number)
        return first_number - second_number
    end
    
    # puts subtraction(user_first_number, user_second_number)
    
     def multiplication(first_number, second_number)
        return first_number * second_number
     end
    
    # puts multiplication(user_first_number, user_second_number)
    
    def division(first_number, second_number)
        return first_number / second_number
    end
    
    # puts division(user_first_number, user_second_number)

def choose_calculator(user_decision)
    if user_decision == "four function calculator" || user_decision == "four" || user_decision == "four function" || user_decision == "math"
    #FOUR FUNCTION CALCULATOR
    puts "Enter first number.".bold
    user_first_number = gets.chomp.to_f
    
    puts " "
    
    puts "What operation?".bold
    user_operation = gets.chomp.downcase
    
    puts " "
    
    puts "Enter second number.".bold
    user_second_number = gets.chomp.to_f
    
    puts " "
    
    puts "Answer:".bold
    
    
    #CREATE THE CONDITIONAL
        if user_operation == "+" || user_operation == "addition"
            puts addition(user_first_number, user_second_number)
            
        elsif user_operation == "-" || user_operation == "subtraction"
            puts subtraction(user_first_number, user_second_number)
            
        elsif user_operation == "*" || user_operation == "multiplication"
            puts multiplication(user_first_number, user_second_number)
            
        elsif user_operation == "/" || user_operation == "division"
            puts division(user_first_number, user_second_number)
        
        end
    elsif user_decision == "color calculator" || user_decision == "color"
        puts "Enter first color.".bold
        user_first_color = gets.chomp.downcase
        
        puts " "
        
        puts "Enter second color.".bold
        user_second_color = gets.chomp.downcase
        
        puts " "
        
        puts "Mix!".bold
        
        def mix(first_color, second_color)
            if (first_color == "blue") && (second_color == "red") || (first_color == "red") && (second_color == "blue") 
                outcome = "purple".magenta
            elsif (first_color == "blue") && (second_color == "yellow") || (first_color == "yellow") && (second_color == "blue") 
                outcome = "green".green
            elsif (first_color == "red") && (second_color == "yellow") || (first_color == "yellow") && (second_color == "red") 
                outcome = "orange".brown
            # return "#{first_color} + #{second_color} = #{outcome}"
            else 
                puts "Error.".bold.red + " " + "Enter primary colors."
            end
        end
        puts mix(user_first_color, user_second_color)
    end


end
puts choose_calculator(user_choose_calculator)

# #FOUR FUNCTION CALCULATOR

# puts "Enter first number."
# user_first_number = gets.chomp.to_f

# puts "What operation?"
# user_operation = gets.chomp.downcase

# puts "Enter second number."
# user_second_number = gets.chomp.to_f

# def addition(first_number, second_number)
#     return first_number + second_number
# end

# # puts addition(user_first_number, user_second_number)

# def subtraction(first_number, second_number)
#     return first_number - second_number
# end

# # puts subtraction(user_first_number, user_second_number)

#  def multiplication(first_number, second_number)
#     return first_number * second_number
#  end

# # puts multiplication(user_first_number, user_second_number)

# def division(first_number, second_number)
#     return first_number / second_number
# end

# # puts division(user_first_number, user_second_number)

# #CREATE THE CONDITIONAL
# if user_operation == "+" || user_operation == "addition"
#     puts addition(user_first_number, user_second_number)
    
# elsif user_operation == "-" || user_operation == "subtraction"
#     puts subtraction(user_first_number, user_second_number)
    
# elsif user_operation == "*" || user_operation == "multiplication"
#     puts multiplication(user_first_number, user_second_number)
    
# elsif user_operation == "/" || user_operation == "division"
#     puts division(user_first_number, user_second_number)

# end


# #COLOR CALCULATOR

# puts "Enter first color."
# user_first_color = gets.chomp.downcase

# puts "Enter second color."
# user_second_color = gets.chomp.downcase


# puts "Mix!"

# def mix(first_color, second_color)
#     if (first_color == "blue") && (second_color == "red") || (first_color == "red") && (second_color == "blue") 
#         outcome = "purple"
#     elsif (first_color == "blue") && (second_color == "yellow") || (first_color == "yellow") && (second_color == "blue") 
#         outcome = "green"
#     elsif (first_color == "red") && (second_color == "yellow") || (first_color == "yellow") && (second_color == "red") 
#         outcome = "orange"
#     return "#{first_color} + #{second_color} = #{outcome}"
#     end
# end
# puts mix(user_first_color, user_second_color)