require 'sinatra'
require 'json'
require 'shouty'

shouty = Shouty.new

set :port, 8080
set :environment, :production

put '/location/:name' do

  if params.has_key?('x') && params.has_key?('y')
    name = params['name']
    x = params['x']
    y = params['y']
    shouty.set_location(name, Coordinate.new(x, y))
  else
    halt 400, 'x and y parameters are required'
  end

  'OK'
end

put '/shout/:name' do
  if params.has_key?('msg')
    name = params['name']
    msg = params['msg']
    shouty.shout(name, msg)
  else
    halt 400, 'msg parameter is required'
  end

  'OK'
end

get '/messages/:name' do
  shouty.messages_heard_by(params['name']).to_json
end
