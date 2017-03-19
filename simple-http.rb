require 'socket'

server = TCPServer.new('localhost', 4444)

loop do
  socket = server.accept
  request = socket.gets

  STDERR.puts request
  response = 'Hello worls ! \n'
  socket.print response
  socket.close
end