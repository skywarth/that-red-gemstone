
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

instance.sayHi();

puts instance.name

