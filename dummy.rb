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

puts 'end'

puts "this will be printed only if condition on the right is true" if 80/2==41


str_1=60
str_2=60

puts str_1.equal?(str_2)

puts("woah") || true