require 'pry-byebug'


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

my_hash = { "one" => 1, "two" => 2 }

arr=[3,32,44,53]

arr.map! do |value|
  value.pow(2)

end

puts arr