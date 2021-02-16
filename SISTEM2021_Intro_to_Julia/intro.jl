"""---Ints, floats and Strings---"""
test_string = "Julia is a Cool Language"

findfirst("i", test_string)

lowercase(test_string)

occursin("Julia", test_string)

parse(Int64, "42")
parse(Float64, "123.345")
string(123)

# Unlike in Python, single quotation marks '' are different to double "". 
# The former are single characters (chars), wheras the latter are strings.
println(typeof('a'))
println(typeof("a"))


"""---Arrays and Dictionaries---"""
arr1 = [3, 5, 9]
length(arr1)
maximum(arr1)

# Arrays are concatenated using vcat()
vcat([3, 5, 9], [1, 2, 3])

# Adding items to the array is done much like in Ruby with the function push!()
# Note: you can only push a variable of a different type if the array is not consistent of just 1 type (e.g. Int64)
arr2 = ["Hello", 21, 4.2]
push!(arr2, "34")
println("Newly appended array: ", arr2)

# sorting is also done with the function sort!()
# Note: the exclamation mark indicates that it modifies the original.
arr3 = [3, 5, -1]
sort!(arr3)
println("Sorted array: ", arr3)

# Remenber: arrays start at 1! "end" is a reserved word used to indicate the termination point of an array.
letters    = ["a", "b", "c", "d"]
println(letters[1:end])
println(letters[2:3])

# Dictionaries are rather unlike tuples or arrays.
phonebook = Dict("John" => "555", "Alice" => "111", "Bob" => "333")

# We can retrieve keys using the keys() function. Ditto for values
println("Keys: ", keys(phonebook))
println("Values: ", values(phonebook))

# Accessing a particular key is done through indexing. E.g. for "John"
println(phonebook["John"])

# We can also check if this key "John" is even in the phonebook using haskey()
# This will return True if it is present
println("Found John in phonebook: ", haskey(phonebook, "John"))

# Sets also exist in Julia, again with slightly different methods of operation compared to Python
s1 = Set([1, 2, 3, 61, 2, 12, 1, 19])
s2 = Set([1, 12, 35, 61, 2, 42, 150])

# To join Sets together we use the function union()
union(s1, s2)

# To find the common elements between 2 Sets
intersect(s1, s2)

"""---Functions and Loops---"""
# A  function to print "Hello $name"
function welcome1(name)
    println("Hello $name")
end

welcome1("Katya")

# Julia functions can also be done in 1 line if the code fits on a single line.
f(x, y) = println(x * y)
f(3, 5)

# iterating from 1 to 5
for i = 1:5
    println(i)
end

# nested looping
for i = 1:5, j = 1:5
    #println(i, " : ", j)
end

# while loops operate a little differently
i = 1
println("While loop:")
while i <= 5
    println(i)
    i = i + 1
end