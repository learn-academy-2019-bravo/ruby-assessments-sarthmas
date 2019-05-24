
tempArray = [1, 2, 6, 9, 3, 21]

tempArray2 = tempArray.map { |n| n * 2 }

puts tempArray2

tempArray.each do |a|
  a * 2
end

puts tempArray2

#### 2. From all the built in Ruby methods we've seen in class this week, choose three that you think are particularly helpful and create examples to show how they work.

# your three built in ruby methods

a = [1, 2, 3]
a.map { |n| n * 2 }

puts a
# output: [2,4,6]

array1 = ['hello', 'hi', 'goodbye']
newArray1 = array1.select{|word| word.length > 3}

puts newArray1
# output: ["hello", "goodbye"]

array2 = [1, 2, 3]
newArray2 =array2.reduce{|sum, x| sum + x}

puts newArray2
# output: 6


#### 3. Create a method that takes in a sentence and returns a new sentence with the first letter of each word capitalized.

sentence = "hello there, how are you?"
# expected output = "Hello There, How Are You?"

def LetterCapitalize(str)
  str = str.split(" ").each {|word| word.capitalize!}
  str = str.join(" ")
  return str
end

puts LetterCapitalize(sentence)

#### 4.  Create a method that takes in a string and returns a new string with all the vowels removed. HINT:  there's a built in string method for this

no_vowels = "I have no vowels"
# expected output = " hv n vwls"

newString = no_vowels.delete('aeiou')

puts newString

#### 5. Look at this horrible ruby code, and fix it to be good ruby code.
#

class Example
  def initialize(day)
    @day=day
  end
  def Say_hi
    if day == "Friday"
      puts "TGIF!"

    elsif day == "Monday"
      puts "Its monday again"

    else
      puts "another day"
    end
  end
end

#### 6a.  Create a class called Animal that initializes with a color.  Create a method in the class called legs that returns 4.

# your class here

class Animal
  def initialize(color)
    @color = color
  end

  def legs
    4
  end
end

#### 6b.  Create a new instance of an Animal with a brown color.  Return how many legs the animal has.

dog = Animal.new("brown")

puts dog.legs
