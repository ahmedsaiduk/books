puts 'Creating 3 author'
auth1 = Author.new(first_name: 'Ahmed', last_name: 'Said')
auth2 = Author.new(first_name: 'Mohamed', last_name: 'Mostafa')
auth1.save
auth2.save
Author.create(first_name: 'Amr', last_name: 'Osama')

puts 'Creating 2  books with authors'
Book.create(full_name: 'Most gold tips', year: '2018-11-11', author: auth1)
Book.create(full_name: 'breaking dawn', year: '2018-12-12', author: auth2)
