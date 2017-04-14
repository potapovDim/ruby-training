require 'mongo'

client = Mongo::Client.new([ '127.0.0.1:27050' ],
        :database => 'test_new_db')
collection = client[:people]

doc = { name: 'Steve', hobbies: [ 'hiking', 'tennis', 'fly fishing' ] }

result = collection.insert_one(doc) #insert_one - додати один документ об'єкт> insert_many -> array

result.n # returns 1, because one document was inserted