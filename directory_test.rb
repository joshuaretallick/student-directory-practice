# create an empty array
@students = []

def input_students
  puts 'Please enter the names of the students'
  puts 'To finish, just hit return twice'
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  until name.empty?
    # 5. Code only works with student name and cohort, add more info
    puts 'Please enter their favourite hobby'
    hobby = gets.chomp
    puts 'Please enter their country of birth'
    country = gets.chomp
    @students << { name: name, cohort: :November, hobby: hobby, country: country }
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = gets.chomp
    # return the array of students
    @students
  end
end

# printing header statement
def print_header
  puts 'The students of Villains Academy'
  puts '-------------'
end

# printing the list of students
def print(_students)
  @students.each do |student|
    puts "#{student[:name]}, #{student[:cohort]} cohort, Hobby: #{student[:hobby]}, Country of birth: #{student[:country]}"
  end
end

# printing the footer with count tally
def print_footer(_students)
  puts "Overall, we have #{@students.count} great students"
end

# starts the whole process
students = input_students
# nothing happens until we call the methods
print_header
print(students)
print_footer(students)
