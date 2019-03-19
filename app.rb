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
       @phrase= params[:phrase]
       @times= params[:number].to_i
       i=0
       binding.pry
       while i <= @times do
         puts @phrase
         i +=1
       end

  end
end
