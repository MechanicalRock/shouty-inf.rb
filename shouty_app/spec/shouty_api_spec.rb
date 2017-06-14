ENV['RACK_ENV'] = 'test'

require 'shouty_api'
require 'rspec'
require 'rack/test'

describe "Shouty Rest API" do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "should hear a shout" do
    put '/location/Lucy', :x => 0, :y => 0
    expect(last_response.ok?).to be_truthy
    put '/location/Sean', :x => 0, :y => 900
    expect(last_response.ok?).to be_truthy
    put '/shout/Sean', :msg => 'Hello World'
    expect(last_response.ok?).to be_truthy
    get '/messages/Lucy'

    expect(last_response.ok?).to be_truthy
    expect(last_response.body).to eq('{"Sean":"Hello World"}')

  end
end
