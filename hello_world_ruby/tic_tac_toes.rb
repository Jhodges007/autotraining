require 'sinatra'
require 'json'

environment = ENV['ENVIRONMENT']

get '/hello' do
  'hello world!'
end

post '/tictactoe/next-move' do

  request.body.rewind
  payload = JSON.parse(request.body.read)
  board = payload["board"]

  board.sub!(/\*/, payload["piece"])
  board

end

def analyze

end



