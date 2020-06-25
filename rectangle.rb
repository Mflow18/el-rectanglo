# We are adding some styling parameters here, please add 1, 2 or 3 at the end when you call the function, for instance :
# ruby rectangle.rb 5 5 3

x = ARGV[0].to_i
y = ARGV[1].to_i
style = ARGV[2].to_i

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
