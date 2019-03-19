require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
      @name= params[:name]
      @name.reverse!
  end
  get '/square/:number' do
    @number= params[:number].to_i
    return @number.square!.t_s
  end

end
