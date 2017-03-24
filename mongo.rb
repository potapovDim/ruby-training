require 'mongo'

client = Mongo::Client.new([ '127.0.0.1:27050' ])

puts client.list_databases