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

  get "/reverse" do
    "it's reverse"
  end
end
