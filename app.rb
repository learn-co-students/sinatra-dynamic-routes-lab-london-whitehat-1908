require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do 
    @name = params[:name]
    @name.reverse!
    return @name
  end

  get '/square/:number' do
    return (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    @result = ""
    i = 0
    while i < params[:number].to_i do
      @result += "#{params[:phrase]} "
      i += 1
    end
    return @result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @result = 0
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if params[:operation] == "add" then
      @result = @num1 + @num2 
    elsif params[:operation] == "subtract" then
      @result = @num2 - @num1
    elsif params[:operation] == "multiply" then
      @result = @num1 * @num2 
    elsif params[:operation] == "divide" then
      @result = @num1 / @num2
    end
    
    return @result.to_s
  end
end