=begin
puts 8.even?

puts 'whaDDup'.capitalize()[0,4]

puts ' '.empty?
=end

puts 'sire'.prepend("g'morning ",'there ')

someString='jar'

:wtf_is_symbols

puts :wtf_is_symbols

puts someString.object_id==someString.object_id

class HelloClass

  attr_accessor :name
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

instance.name='test';

puts instance.name

