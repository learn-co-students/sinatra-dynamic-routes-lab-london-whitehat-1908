require_relative 'config/environment'

class App < Sinatra::Base
	get "/reversename/:name" do
		params[:name].reverse!
	end

	get "/square/:number" do
		(params[:number].to_i * params[:number].to_i).to_s
	end

	get "/say/:number/:phrase" do
		str=""
		for i in (0...params[:number].to_i) do
			str+=params[:phrase]
		end
		return str
	end

	get "/say/:word1/:word2/:word3/:word4/:word5" do
		"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
	end

	get "/:operation/:number1/:number2" do
		num1 = params[:number1].to_i
		num2 = params[:number2].to_i

		case params[:operation]
		when "add"
			return "#{(num1+num2)}"
		when "subtract"
			return "#{(num1-num2)}"
		when "multiply"
			return "#{(num1*num2)}"
		when "divide"
			return "#{(num1/num2)}"
		end
	end
end

# App
  # GET /reversename/:name
  #   sends a 200 status code (FAILED - 1)
  #   renders the name backwards (FAILED - 2)
  #   isn't hard-coded (FAILED - 3)
  # GET /square/:number
  #   sends a 200 status code (FAILED - 4)
  #   renders the square of the number (FAILED - 5)
  #   isn't hard-coded (FAILED - 6)
  # GET /say/:number/:phrase
  #   sends a 200 status code (FAILED - 7)
  #   repeats the phrase n times (FAILED - 8)
  #   isn't hard-coded (FAILED - 9)
  # GET /say/:word1/:word2/:word3/:word4/:word5
  #   sends a 200 status code (FAILED - 10)
  #   concatenates the words and adds a period (FAILED - 11)
  #   isn't hard-coded (FAILED - 12)
  # GET /:operation/:number1/:number2
  #   adds two numbers together (FAILED - 13)
  #   subtracts the second number from the first (FAILED - 14)
  #   multiplies two numbers together (FAILED - 15)
  #   divides the first number by the second number (FAILED - 16)

