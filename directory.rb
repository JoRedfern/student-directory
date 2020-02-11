def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
# create an empty array
  students = []
  birth_country = []
# get the first name
  name = gets.chomp
#while the name is not empty, repeat this code
while !name.empty? do
  #add the student hash to the array
  students << {name: name, cohort: :november, birth_country: birth_country}
puts "Please enter birth country"
  birth_country = gets.chomp
  puts "Now we have #{students.count} students, please add another student"
  #get another name from user
  name = gets.chomp
end
# return array of students
students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
  puts "#{student[:name]} (#{student[:cohort]} cohort, from #{student[:birth_country]})"
  end
end

def print_footer(names)
  puts "Overall we have #{names.count} great students"
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
