# Ruby

## Misc




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