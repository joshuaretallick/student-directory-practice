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
# 1. Modify the program to print a number before the name of each student
  students.each_with_index do |student, index|
# 2. Only print students that begin with a specific letter
# 3. Only print the students whose name is shorter than 12 characters
    if student[:name].start_with?("D") && student[:name].length < 12
      puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
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
