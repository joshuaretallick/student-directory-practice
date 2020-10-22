def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

# printing header statement
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# printing the list of students
def print(students)
# 4. Rewrite each method as while or until methods
  counter = 0
  while counter < students.length do
    puts "#{students[counter][:name]} (#{students[counter][:cohort]} cohort)"
    counter += 1
  end
end

# printing the footer with count tally
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

# starts the whole process
students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
