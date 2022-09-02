require './person'
require './book'
require './classroom'
require './nameable'
require './rental'
require './student'
require './teacher'
# require './main'

class App
  def initialize()
    @my_books = []
    @my_rentals = []
    @people = []
  end

  def show_menu
    puts ' Welcome to school library'
    puts ''
    puts ' please choose an option by entering a number'
    puts ' 1 - List all books'
    puts ' 2 - List all people'
    puts ' 3 - Create a person'
    puts ' 4 - Create a book'
    puts ' 5 - Create a rental'
    puts ' 6 - List all rentals for a given person id.'
    puts ' 7 - Exit'

    gets.chomp
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def run_command
    run = show_menu
    case run
    when '1'
      list_all_books
    when '2'
      list_all_people
    when '3'
      create_person
    when '4'
      create_book
    when '5'
      create_rental
    when '6'
      list_all_rentals
    when '7'
      puts 'Thanks for using this app ...'
      exit
    else
      puts 'Select any option from 1 to 7'
      puts ''
      run_command
    end
  end

  # rubocop:enable Metrics/CyclomaticComplexity
  def list_books
    @my_books.each_with_index do |x, index|
      puts "#{index} Title: \"#{x.title}\", Author: #{x.author} "
    end
  end

  def list_people
    @people.each_with_index do |x, index|
      puts "#{index} [#{x.class.name}] Name: #{x.name}, ID: #{x.id}, Age: #{x.age}"
    end
  end

  def my_permission(my_char)
    case my_char
    when 'N'
      false
    when 'Y'
      true
    end
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    teacher = Teacher.new(age, specialization, name, nil)
    @people.push(teacher)
  end

  def create_student
    print 'Age:'
    age = gets.chomp
    print 'Name:'
    name = gets.chomp
    print 'Has parent permission? [Y/N]:'
    permission = gets.chomp
    student = Student.new(age, name, my_permission(permission))
    puts student
    @people.push(student)
  end

  def list_all_books
    list_books
    puts 'Press enter to continue ...'
    gets.chomp
    run_command
  end

  def list_all_people
    list_people
    puts 'Press enter to continue...'
    gets.chomp
    run_command
  end

  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    puts ''
    person_type = gets.chomp
    case person_type
    when '1'
      create_student
    when '2'
      create_teacher
    end
    puts ' '
    puts 'Person created successfully'
    puts ' '
    puts 'Press enter to continue ...'
    gets
    run_command
  end

  def create_book
    print 'Title:'
    title = gets.chomp
    print 'Author:'
    author = gets.chomp
    book = Book.new(title, author)
    @my_books.push(book)
    puts 'Book created successfully'
    puts ''
    run_command
  end

  def create_rental
    puts "\nSelect a book from the following list by number"
    list_books
    book_index = gets.chomp
    puts "\nSelect a person from the following list by number"
    list_people
    person_index = gets.chomp
    print "\n Date(yyyy/mm/dd): "
    rental_date = gets.chomp
    new_rental = Rental.new(rental_date, @my_books[book_index.to_i], @people[person_index.to_i])
    @my_rentals.push(new_rental)
    puts 'Rental added successfully'
    run_command
  end

  def list_all_rentals
    me = nil
    print "\nID of person: "
    person_id = gets.chomp
    @people.each do |x|
      me = x if x.id == person_id.to_i
    end
    me.rentals.each do |x|
      puts x.date
      puts "Date: #{x.date} Book: #{x.book.title} Author: #{x.book.author}"
    end
    puts
    run_command
  end
end
