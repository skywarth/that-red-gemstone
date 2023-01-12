=begin
puts 8.even?

puts 'whaDDup'.capitalize()[0,4]

puts ' '.empty?
=end

class HelloClass

  @@this_is_a_class_var='whats up'

  @this_is_an_instance_var='whats down'

  attr_accessor :this_is_a_class_var
  attr_accessor :this_is_an_instance_var
  def initialize(name='Judas')
    @name=name;
  end
  def sayHi()
    puts "Hi #{@name}!"
  end

end
def hi
  puts "Hello World!"
end

instance=HelloClass.new('Matthew');

puts instance.this_is_an_instance_var

y = [1, 2, 3, 4, 5]
y.each do |a|
  print "#{a + 1},"
end


i=0
while i < 2 do
  puts "i is #{i}"
  i += 1
end

0.upto(2) do |i|
  puts "i is #{i}"
end

for i in 0..2 do
  puts "i is #{i}"
end

