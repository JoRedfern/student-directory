
students = [
  "Dr Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]

# first let's print the names of the students under a heading
puts "The students of Villains Academy"
puts "-------------"
students.each do |student|
  puts student
end
#then let's print the total number of students
puts "Overall we have #{students.count} great students"
