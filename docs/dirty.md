- `!` 
  - `someArr.reverse()!` actually also reverses the someArr itself meanwhile returning the altered value
- `nil` value is absolute nothingness, not sure if its null or undefined yet. Probably `undefined`.
  - When a method doesn't return anything (`void`), it returns nil. Kinda like `void` I suppose
- method calls doesn't require `()`, its optional. e.g: `imCallingSomeMethod;`
- variable assignments are 'reference variable' I guess.




Scope
-  Inner scope can access variables initialized in an outer scope, but not vice versa. Like duh, many other langs share this feature.
- Those that has `{}` or `do/end` such as `each`, `times` invoke new inner scope, meanwhile `for` does not invoke an inner scope. Example:
```
# scope.rb

a = 5

3.times do |n|    # method invocation with a block
  a = 3
  b = 5           # b is initialized in the inner scope
end

puts a
puts b            # is b accessible here, in the outer scope?

//Undefined local variable or method `b' for main:Object (NameError)
```


```
arr = [1, 2, 3]

for i in arr do
  a = 5      # a is initialized here
end

puts a       # is it accessible here?
//yep you can access it just fine
```


Variable types:
- Constants
- Global variables
- Class variables (i bet this is static variables)
- Instance variables (propery/attribute ?)
- Local variables


- String is mutable
- Integer is immutable