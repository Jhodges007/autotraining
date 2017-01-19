require 'sinatra'

environment = ENV['ENVIRONMENT']

get '/hello' do
  'hello world!'
end