## I learned Ruby basics from the freeCodeCamp youtube video provided by giraffe academy. The repository contains code files and a note 

[video resource](https://www.youtube.com/watch?v=t_ispmWmdjY&t=7242s)

## puts vs print

---

Puts allows to have a new line as well but print only prints.

## variables

---

Generally good discriptive name is given

_example:_

```
character_name = "john"
character_age = 20
```

puts has to be sorrounded with set of parenthesis when used with concatenation with variables

_example:_

```
puts ("the character name is "+ character_name + "is"+ character_age + "years old")
```

## Data Types

---

- basic dataypes are  
   nil, int, char, float, string, bool

## working with strings

---

- skipping " with \
- creating new line with \n
- .upcase() : _converts into uppercase_
- .strip() : _removes leading and trailing whitespaces_
- .length() : _returns num of chars in string_
- .include? "anything" : _returns if the passed phrase is present inside the string_
- [num] : _index of an string_
- [num1,num2] : _gives elements from num1 to num2 not incl num2 index_
- .index("letter") : _first index of the char_

## Math and numbers

---

- num1 \*\* num2 : _num1 raise to the power of num2_
- "%" : _modulo operator_
- num.to_s : \_converts num to string\*
- num.abs() : _returns absolute value of num_
- num.round() : _rounds up the decimal number_
- num.ceil() : _same as js concept_
- num.floor() : _same as js concept_
- num.squrt() : _square root of a num_

If you're using int and int operaions then you will get int output even while doing divisions

if you're using int and float you will get float ouptput

## Getting user input

---

gets method is used to get input from an user

- gets.chomp() is used to print the output in the same line recived from the gets. If not used then it will print in the new line

Ruby keeps the recived input as an string by default

To convet to int and float we use,

- to_i , to_f

## Arrays

---

Same concept from other programming langauges Array

[more resource](https://www.educative.io/edpresso/how-to-work-with-arrays-in-ruby)

_example:_

```
fruits = Array["apple", "banana", "mango"]
```

One can keep different data types inside of an aray

_example:_

```
fruits = Array[20, "banana", true]
```

**common array methods**

- array.[num] : _returns element at index of num_
- array.[num1,num2] : _gives reange of elements from num1 to num2 not including element at num2_
- array[num]="newValue" : _changing the element at index of num_
- array.length() : _returns num of elemetns inside of an array_
- array.reverse() : _reverse an aray_
- array.sort() : _sorts an array_

## Hashes

---

Is a key value pair data structre in ruby. Also called as dictionary

_example:_

```
hash_name = {
"key1" => "value1"
:key2 => "value2"
"key3" => "value3"
}
```

Keys has to be unique inside of a hash

hash*name[key_name] : \_returns the value of the given hash at the index of key_name*

## Methods

---

It is a block of code which perfoms specific task.

Same concept from other programming langauges of function

_example:_ _defination_

```
def method_name(parameter1=default_value , parameter_2=default_value)
    block_of_codes
end
```

_calling methods_

```
method_name(argument_1,argument_2)
```

## Return statement

---

Return is a value given back by methods. last line is always return statement in ruby

Nothing gets executed after the return line

return can return multiple values and we can access them by index

### If statements

---

Same concept from other programming langauges

we can use "and", "or", conditions here just like in Python. "!" is used for not

Concept of if, else if and else is used with following syntax

- if
- elsif
- else

_example:_

```
if condition
    block_of_code
elsif condition
    block_of_code
else
    block_of_code
end
```

## Case expressions

---

Same concept from other programming langauges switch concept

_example_

```
case var_name

when condition
    block_of_code
when condition
    block_of_code
when condition
    block_of_code
else
    block_of_code
end
```

else is used for default condition/conditions not matched used in when blocks

## While loops

---

Same concept from other programming langauges

_example_

```
while condition
    block_of_code
end
```

## For loops

---

Used as for in like in python

_for in example_

```
for item in items
    block_of_code
end
```

_range example_

```
for item in num1..num2
    block_of_code
end
```

_number of times example_

Following example will run block of code num of times the num is passed

```
num.times do
    block_of_code
end
```

## Comments

---

Same concept from other programming langauges

methods:

- "#" is used for inline comment
- =begin =end is used for block level comment

_example_

```
# this is inline comment

=begin
this is block level comment
=end
```

## Reading files

---

_syntax_

```
file.open("path","mode") do |name_of_var_to_store_file|
    blocks_of_codes
end
```

If the file is in the same directory as the program directory then file name is enough else we have to include the path for the specific file we are using

Modes can be read, write we pass "r" or "w" in mode to read or write
[file modes detail](https://stackoverflow.com/questions/3682359/what-are-the-ruby-file-open-modes-and-options)

methos:

- file.read() : _to read the file_
- file.read().include?"_ whatever_to_look_for _" : _to search for particular thing inside of file_
- file.readline() : _to read line by line_
- file.readchar() : _to read char by char_
- file.readlines() : _returns array of individual lines in an array_
- file.close() : _to close opened file_

## Writing files

---

various modes on writing on file are ,

- append : _write at the end of the file_
- write : _modifiy, create, override to existing file_

_to append to file_

```
 File.open("path","a") do |name_of_var_to_store_file|
    file.write("\n some new line ")
    # will override the entire file
 end
```

_to crete a new file and write to it_

```
 File.open("new_file_name","w") do |name_of_var_to_store_file|
    file.write("\n contents_to_add ")
 end
```

_to read and write to file_

```
 File.open("path","r+") do |name_of_var_to_store_file|
    file.readline() # this will move the default file reading cursor to the next line

    file.readchar() # same concept as readline but it's with each letter but not with line

    file.write("write_text") # this will write into the file where readline was present if not to default one
 end
```

## Exception handling

---

We use begin and rescure method to handle exceptions

It catches every error happened in the code

_syntax_

```
begin
    block_of_code which may cause error
rescue
    block_of_code to handle the errors
end
```

_example_

```
begin
    num = 10 / 0
rescue
    puts "dividing by zero error"
end
```

_to handle specific errors_

This method will catch the specific error in the code

```
begin
    fruitsArray["mango"]
    num = 10 / 0
rescue ZeroDivisionError
    puts "dividing by zero error"
rescue TypeError
    puts "type error occoured"
end
```

## Classes and objects

---

class is custom data type we can define

class name is started with capital letter.
Inside class we can define attributes of the objects

Class is a blue print for object and object is instance of a class

We can create as much objects as we want

All data are defined within classes and objects in ruby

_example_

```
# creating class
class Book
    attributes_accessor :title, :author, :pages
end

# creating objects
book1 = Book.new()
book1.title = "Harry Potter"
book1.author = "Jk Rowling"
book1.pages = 400
```

## Class inititalize methods

---

It is simpler method to create/manage class object in better way

it's called whenever we create a object

_example_

```
class Book
    attributes_accessor :title, :author, :pages
    #initialize method
    def initialize(title,author,pages)
        @title = title
        @author = author
        @pages = pages
    end
end

book1 = Book.new("Harry Potter", "JK Rowling", 400)
book1 = Book.new("MR 360", "AB Deve", 300)

```

## Object methods / Instance methods / Class methods

---

These are the methods defined inside of a class and can be used differently acc to the values being used with the objects

_example_

```
class Student
    attributes :name, :major, :gpa
    # initialize method
    def initialize(name, major, gpa)
        @name = name
        @major = major
        @gpa = gpa
    end

    # Object method
    def has_honors
    if @gpa>=3.5
        return True
    else
        return False
    end
end

student1 = Student.new("jim", "Buisness", 2.2)

```

## Inheritance

---

Allows to extend functionality of a class to another class

Inheritance allows to utilize method override functionality

- is method to able to override the super class functionality into own method as a valid method of inheritance class in sub class

syntax

```
class Super_class < Sub_class
    block_of_codes
end
```

super class can have access to it's methods and fucntions only while sub_class can access super class methods and functions as well

_example_

```
# creating super class
class Super_class
    Super_class_method1()
    Super_class_method2()
end

# creating sub class
class Sub_class < Super_class
    calss2_method1()
    Sub_class_method2()
    Super_class_method1()
        method_override_block_of_code
    end
end

example_class = Sub_class.new()
# applying inheritance property
example_class.Super_class_method1()
```

## Modules

---

It is a container to store various methods inside of it

Normally modules names are as Capitalized

Modules are either imported from other files or can be included within the files

_examples_

_i) include from same file_

```
module module_name = {
    block_of_methods
}

include module_name
module_name.method_name()
```

_ii) import from another file with relateive path_

```
require_relative "file_name.rb"
include module_name

module_name.method_name()
```

## Interactive Ruby

---

It is a terminal interface to interact with ruby code locally. It comes with ruby installation

Any valid ruby commands can be executed inside of the enviornment

It doesn't require any files to work with.

Can be useful with the testing options
