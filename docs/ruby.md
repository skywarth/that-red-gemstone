# Ruby

## Misc

### String Concat
- `+` operator like many other programming langs.
- `<<` operator. `"Hello" << " there"`
- `concat()` method. `"Hello".concat('there')`

### Equality 
- `eql?`: checks both value and type for equality
- `equal?`: checks if both values are exactly the same object in memory 
  ```ruby
  var_1 = "foo"
  var_2 = "foo"
  var_1.equal?(var_2) #=> false
  var_1.eql?(var_2) #=> true
  
  int_1=60
  int_2=60
  str_1.equal?(str_2) #=>true

  ```
  
### Array
- zero based indexing
- `some_arr[-1]` gives the last element
  - Alternatively `some_arr.last`
- `push()` for adding to the end
  - `unshift()` for adding to the beginning
- `my_arr = [1, 2, 3]`
- `Array.new(3) #=> [nil, nil, nil]`
- `Array.new(3, 7) #=> [7, 7, 7]`
- Array difference: `[1, 1, 1, 2, 2, 3, 4] - [1, 4]  #=> [2, 2, 3]`

### Hash
- Its simply array with custom keying/indexing. Same as array, it includes `Enumarable`
- In other words, it is simply object (in many other programming langs)
- Key-value association is done with **hash rocket** `=>`
- create new hash by `new_hash={}` or `new_hash=Hash.new`
- Rocket syntax
  ```ruby
  john_doe={
          "occupation"=>'janitor',
          "age"=>'42',
          "region"=>"midwest"
  }
  ```
- Symbol syntax
  ```ruby
  john_doe={
          occupation:'janitor',
          age:'42',
          region:"midwest"
  }
  ```
- access by:
  - `john_doe.fetch('age')`, raises error if key doesn't exist
    - `john_doe.fetch('age',30)` second param is for default value
  - `john_doe['age']`, just like array. Beware this'll silently return `nil` if key is not found. 
- setting values:
  - `john_doe['keyphrase']='sawed_off'`. Works both for adding and updating values
 


### Ranges
```ruby
# Ranges that use '..' to include the given end value.
(1..4).to_a      # => [1, 2, 3, 4]
('a'..'d').to_a  # => ["a", "b", "c", "d"]
# Ranges that use '...' to exclude the given end value.
(1...4).to_a     # => [1, 2, 3]
('a'...'d').to_a # => ["a", "b", "c"]

```

## Loops

### `loop`
- Equivalent (sort of) of `while` in sane programming languages
- You won't really need to use it
- You have to use `break` to break it.
- Just pretend it doesn't exist

```ruby
i = 0
loop do
i += 1
break if i == 10
end
```

### `while`
- good old `while` you're familiar with

```ruby

while someCondition do
  #execution block
end
```

### `until`
- opposite of `while` (yikes)
- run until the condition is true
- Avoid using `!` in it's condition, because you were to use `!` you could just use `while` yes ?

```ruby

until someCondition do
  #execution block
end
```

### `for`
- classic `for` loop

```ruby
for i in 0..10 do
  puts "#{i}"
end
```

### `.times`
- do something fixed (countable) amount of times, for example 3 times.
- starts from `0` !
```ruby
3.times do |number|
  puts "Curr number #{number}"
end
```

### `upto` and `downto`
- Dude there is `for` loops, like... I can't even...

```ruby
5.upto(10) {|num| print "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) {|num| print "#{num} " }   #=> 10 9 8 7 6 5
```


## Conditions

- Only `false` and `nil` are considered falsy. Everything else is truthful
  - So `0` and `''` are evaluated as `true`

- There is also `unless`. Same thing as `if`, but the logical opposite of it. Not so necessary IMHO
- Ternary operator is available `condition?do_this:do_that`


```ruby
if my_condition
  #condition execution block
elsif alt_condition
  #alt condition block
else
  #falsy condition execution block
end
```

```ruby

#shorthand usage

puts "this will be printed only if condition on the right is true" if 80/2==40

```


## Conventions
- Var names snake_case
  - `you_good=false`
- If a method returns boolean, it should end with `?`.
  - E.g: `empty?`


## Conversions
- `to_f`: convert to float
- `to_i`: convert to int
- and so forth

## Variables

- Naming convention is snake_case

### Variable Types

#### Constants
- All capital, per convention
- Can be changed, but will give warning. 

#### Global variables
- Starts with `$`
- Available through entire application
- I found it very similar to  global variables (such as env) in PHP
- Almost never use them for obvious reasons

#### Class variables
- Starts with `@@`
- Accessible by the instances of the class
- I suppose we are not meant to use it ??

#### Instance variables
- Starts with `@`
- dunno for now

#### Local variable
- `my_var='fort'`
- good old variable, classic





## Inputs

### Gets

- `x=gets`
- `gets` always put "\n" at the end of the input
- `chomp` is used for trimming that "\n" that the end. `x=gets.chomp`

## Outputs

### Console

These come from `$stdout` global lib. E.g: `$stdout.print 'hello'`


#### Print

`print "noice"`

Good old print, nothing fancy.

- It inherently call `to_s` on object passed to it


#### Puts

`puts "noice"`

```ruby
noice
```


[Print](#print) with `\n` at the end.

#### P

Is for debugging. Showing an object as it is

`p "noice"`

```ruby
"noice"
```

## Comments

### Single line comments
- `# some comment`. Just the same as `//` in other languages.

### Multi-line comments

- `=begin`, `=end`. Similar to `/* */` in other languages

```ruby
=begin
This is a comment line
it explains that the next line of code displays
a welcome message
=end
```

## Moronic stuff

- `capitalize` capitalizes the first letter but downcase the rest of the chars.
  - Among all those prog. langs I've never encountered some utterly disturbing feature
- `' '.empty?` returns false
  - *mild shock*
- `sub()` alters the first occurrence, `gsub()` alters all occurrences. But `delete()` alters all occurrences
  - Please, this isn't some low-level language, have some consistency.
- There is a `prepend` but no `append` method. 
  - I know it's not necessary, but where is the consistency though.
  - And `prepend` expects wildcard parameters (any number of arguments), but doesn't accept array. Gimme my copium, stat !
- Constants are subject to change, unlike almost all the programming languages. It just gives warning.
- there is no `i++`, damnation...
- maybe I'm just old-school but this whole opposite acting syntax is not appealing to me. (e.g: `while` and `until`)
- there is `!` for mutation but it is not consistent with most of the methods, it's hard to know which methods are destructive/mutating without checking documentation
- `?` convention for bool methods, kinda unnecessary. Name alone should suffice for such with.
- Why is this a thing dude, like what was the idea. Who would need an object to be a key
  ```ruby
  cursed={{key: "key"} => "hash as a key"}
  ```