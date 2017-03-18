require 'bundler'
require 'socket'

Bundler.require

configure do
  enable :static
end

require_relative 'app'

run Sinatra::Application
