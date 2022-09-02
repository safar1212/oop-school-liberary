require 'json'

class SaveData

    def self.save(books, rentals, persons)
        save_books(books)
        save_rentals(rentals)
        save_people(persons)
    end

    def self.save_books(books)
        File.write('./data/books.json', []) unless File.exist?('./data/books.json')
        record = []
        books.each { |book| record << { title: book.title, author: book.author } }
        File.write('./data/books.json', JSON.generate(record))
    end
    
    def self.save_people(people)
        File.write('./data/people.json', []) unless File.exist?('./data/people.json')
        record = []
        people.each do |person|
          record << {
            id: person.id,
            # type: person.class,
            name: person.name,
            age: person.age,
            parent_permission: person.can_use_services?
          }
    end
    File.write('./data/people.json', JSON.generate(record))
    end
    
    def self.save_rentals(rentals)
        File.write('./data/rentals.json', []) unless File.exist?('./data/rentals.json')
        record = []
        rentals.each do |rental|
          record << {
            date: rental.date,
            person_id: rental.person.id,
            person_name: rental.person.name,
            title: rental.book.title,
            author: rental.book.author
        }
    end
    File.write('./data/rentals.json', JSON.generate(record))
    end

end