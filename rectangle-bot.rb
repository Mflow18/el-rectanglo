# frozen_string_literal: true

class RectangleMaker
  def initialize
end

  def make_rectangle(x, y, style)
    raise 'One of your values is nil' if x == 0 || y == 0
    raise 'Styling unknown, we are not Coco Channel' unless [1, 2, 3].include?(style)

    case style
    when 1
      a = 'o'
      b = '-'
      c = 'o'
    when 2
      a = 'A'
      b = '.'
      c = 'B'
    when 3
      a = '/'
      b = '*'
      c = '\\'
    end
    
    (0...y).each do |i|
       if i == y - 1
    
      case style
        when 1
        a = 'o'
        b = '-'
        c = 'o'
        when 2
        a = 'A'
        b = '.'
        c = 'B'
         when 3
        a = '\\'
        b = '*'
        c = '/'
      end
    end
    
      length = if x > 2
                 b * (x - 2) + c
               elsif x == 2
                 a
               else
                 ' '
                   end
      puts a + length
      case style
      when 1
        a = '-'
        b = ' '
        c = '-'
      when 2
        a = '.'
        b = ' '
        c = '.'
      when 3
        a = '*'
        b = ' '
        c = '*'
      end
    end
  end
end

maker = RectangleMaker.new

puts 'Welcome to the rectangle maker, what is your name?'
name = gets.chomp
puts "Hello #{name}, are you ready?"
answer = gets.chomp
if answer.downcase.include?('yes')
  puts "Good, let's get started"
elsif answer.downcase.include?('no')
  puts 'Too bad'
else
  puts "I didn't understand so I will assume that you said yes because I am really smart"
end
sleep 1
puts 'Soooo, first, what kind of rectangle do you want?'
sleep 1
puts 'This one?'
sleep 1
maker.make_rectangle(5, 5, 1)
sleep 1
puts 'This one?'
sleep 1
maker.make_rectangle(5, 5, 2)
sleep 1
puts 'Or this one?'
sleep 1
maker.make_rectangle(5, 5, 3)
sleep 2
puts 'Please, put 1, 2 or 3 to decide which styling you want'
style = gets.chomp.to_i
puts 'In order to make a cool rectangle, please enter the length of the rectangle'
x = gets.chomp.to_i
puts 'Mamma mia ! You sure? Ok'
sleep 1
puts 'Now please enter the height of the rectangle'
y = gets.chomp.to_i
puts "Wow, you are... ambitious. Allright let's go !"
sleep 1
puts "1"
sleep 1
puts "2"
sleep 1
puts "3!"

maker.make_rectangle(x, y, style)

sleep 1
puts 'Feeeew... That was intense. Have a good day !'