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
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @text= params[:word1]+ ' '+params[:word2]+' '+params[:word3]+' '+params[:word4]+' '+params[:word5]+'.'
    erb :"say"
  end
  get '/:operation/:number1/:number2' do
    @num1= params[:number1].to_i
    @num2= params[:number2].to_i

   @answer=  @num1.public_send params[:operation], @num2
  end

end
