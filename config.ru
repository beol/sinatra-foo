#\-p 3000
require 'bundler'

Bundler.require

configure do
  enable :static
end

require_relative 'app'

run Sinatra::Application
