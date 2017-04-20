require 'sinatra'
require 'json'
require './tic_tac_toe.rb'


post '/tictactoe/next-move' do

  request.body.rewind
  jsn = JSON.parse(request.body.read)
  ttt = TicTacToe.new
  ttt.next_move(jsn)

end


#########From hello world example:
# environment = ENV['ENVIRONMENT']

get '/hello' do
  'hello world!'
end
