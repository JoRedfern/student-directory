students = []

in_loop = true
while in_loop do
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  test_name = gets.chomp
  puts "Please enter birth country" if !test_name.empty?
  birth_country = gets.chomp
  if test_name.empty? && birth_country.empty?
    in_loop = false
  else
    students << {name: test_name, cohort: :november, birth_country: birth_country}
    puts "Now we have #{students.count} students, please add another student"
  end

def print_start_with_t(students)
  students.each {|name| puts name[:name] if name[:name].start_with?("t")}
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_students(students)
  students.each.with_index(1) do |student,index|
  puts "#{index}: #{student[:name]} (#{student[:cohort]} cohort, from #{student[:birth_country]})"
  end
end

def print_footer(names)
  puts "Overall we have #{names.count} great students"
end
#nothing happens until we call the methods
puts print_header
print_start_with_t(students)
print_footer(students)
