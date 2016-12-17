require 'yaml'
require 'sinatra'

#
#$:.unshift File.expand_path("../application", __FILE__)
#require "it"

#All
Dir.glob("./lib/application/**.rb"){|f| require f }

class Application < Sinatra::Base

  #
  before do
  end

  #
  helpers do
  end

  #
  configure do
  end

  #
  error Exception do
    halt 500
  end

  get '/' do
    "hello Slava"
  end
  #
  get "/forward" do
    exec('python esp_command.py Forward')
  end

  get "/left " do
    exec('python esp_command.py Left')
  end

  get "/right" do
    exec('python esp_command.py Right')
  end

  get "/on" do
    exec('python esp_command.py On')
  end

  get "/soundOff" do
    exec('python esp_command.py SoundOff')
  end

  get "/reverse" do
    exec('python esp_command.py Reverse')
  end

  get "/stop" do
    exec('python esp_command.py Stop')
  end

end
