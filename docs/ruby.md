# Ruby

## Conventions
- Var names snake_case
  - `you_good=false`

## Conversions
- `to_f`: convert to float
- `to_i`: convert to int
- and so forth


## Misc

### String Concat
- `+` operator like many other programming langs.
- `<<` operator. `"Hello" << " there"` 
- `concat()` method. `"Hello".concat('there')`



## Outputs

### Console

These come from `$stdout` global lib. E.g: `$stdout.print 'hello'`


#### Print

`print "noice"`

Good old print, nothing fancy.

- It inherently call `to_s` on object passed to it


#### Puts

`puts "noice"`

```Ruby
noice
```


[Print](#print) with `\n` at the end.

#### P

Is for debugging. Showing an object as it is

`p "noice"`

```Ruby
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