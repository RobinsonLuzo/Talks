"""---Ints, floats and Strings---"""
test_string = "Python is a Cool Language"

test_string.find("y")

test_string.lower()

print("Python" in test_string)

print(int("42"))
print(float("123.345"))
print(str(1210))

# Unlike in Julia there is no difference between single '' and double "" quotation marks.
# Both are of object type String
print(type('a'))
print(type("a"))

"""---Arrays and Dictionaries---"""
arr1 = [3, 5, 9]
print(len(arr1))
print(max(arr1))

# Arrays are concatenated with + in Python
print([3, 5, 9] + [1, 2, 3])

# Adding items to the array is done with .append(). 
# Unlike Julia, Python doesn't care about the type of the array it is adding items to.
arr2 = ["Hello", 21, 4.2]
arr2.append("34")
print("Newly appended array: ", arr2)

# sorting is also done with the method .sort()
arr3 = [3, 5, -1]
arr3.sort()
print("Sorted array: ", arr3)

# Arrays start at 0 in Python
# Compare what [2:3] returns in Python vs Julia
letters    = ["a", "b", "c", "d"]
print(letters[:])
print(letters[2:3])

# Dictionaries are rather unlike tuples or arrays.
phonebook = {"John": "555", "Alice": "111", "Bob": "333"}

# We can retrieve keys using the dict.keys() method. Ditto for values
print("Keys: ", phonebook.keys())
print("Values: ", phonebook.values())

# Accessing a particular key is done through indexing, as in Julia. E.g. for "John"
print(phonebook["John"])

# Python allows us to check if a key is present through minimal syntax compared to Julia.
# This will return True if it is present
print("Found John in phonebook: ", "John" in phonebook)

s1 = set([1, 2, 3, 61, 2, 12, 1, 19])
s2 = set([1, 12, 35, 61, 2, 42, 150])

# To join Sets together we use the function union()
s1.union(s2)

# To find the common elements between 2 Sets
print(s1.intersection(s2))


"""---Functions and Loops---"""
# A  function to print "Hello $name"
def welcome(name):
    print("Hello ", name)

welcome("Katya")

# Python can write one line functions, but they're very ugly
def welcome(name): print("Hi ", name)
welcome("Katya")

# iterating from 1 to 5 - range() doesn't go over the last number
for i in range(1, 6):
    print(i)


# nested looping
for i in range(1, 6):
    for j in range(1, 6):
        print(i, " : ", j)


# while loop more closely resembles Julia
i = 1
print("While loop:")
while i <= 5:
    print(i)
    i = i + 1

