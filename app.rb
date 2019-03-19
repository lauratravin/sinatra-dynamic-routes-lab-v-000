require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
      @name= params[:name]
      @name.reverse!
  end
  get '/square/:number' do
     @number= params[:number].to_i ** 2
     erb :"square"
  end
  get '/say/:number/:phrase' do
     params[:phrase] * params[:number].to_i
  end
  get get '/say/:word1/:word2/:word3/:word4/:word5' do
     params[:word1]
  end
    
  end
end
