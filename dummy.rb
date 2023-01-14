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


arr=[1,2,3,4]


arr2=[
  'qwe'=>22
]

arr3={
  'qwe'=>22
}

puts arr2
puts arr3

puts arr3[:zz]