# require 'yaml'

# CONFIG = YAML.load(File.read(File.join(File.dirname(__FILE__), "./tr.yml")))

# string_builder = '1234567890qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'

# initial_prefix_email = ''

# for i in 0..10 do
#   puts i, string_builder[rand(0..62)]
#   initial_prefix_email += string_builder[rand(0..62)]
# end

# puts '' + 'b', initial_prefix_email

# a = {
#   d:"10",
#   c: 100
# }

# puts a[:c]

arr = Array.new 255
new = arr.join '2'
puts new.length
