require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get 'reverseaname/:name'
     @name= params[:name].reverse!
     put @name
  end

end
