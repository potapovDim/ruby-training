require 'mongo'

client = Mongo::Client.new([ '127.0.0.1:27050' ],
        :database => 'test_new_db')
@collection = client[:people]

doc = { name: 'Steve', hobbies: [ 'hiking', 'tennis2321', 'fly fishing' ] }

doc1 = [
  { name: "Gunter"},{name: "Karl"}
]

result = @collection.insert_one(doc) #insert_one - додати один документ об'єкт> insert_many -> array
@collection.insert_many(doc1)

@collection.find().each do |person|
  puts 'NA-------------------'
  puts person
end



# def add_person(person_name)
#   doc = {name: person_name }
#   col_length  = @collection.find(:name => person_name.to_s).to_enum
#   puts col_length.class_name , 'dsaldjlaskjdlasjkjdsa'
# end

# add_person('new')



#result.n # returns 1, because one document was inserted