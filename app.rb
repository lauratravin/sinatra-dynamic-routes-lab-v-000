require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reverseaname/:name'
    #  @name= params[:name].reverse!
    #  puts @name
  end

end
