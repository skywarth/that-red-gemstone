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
- 





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
  - And `prepend` expects wildcard parameters (any number of arguments), but doesn't accept array. Gimme my copium stat !
- Constants are subject to change, unlike almost all the programming languages. It just gives warning. 