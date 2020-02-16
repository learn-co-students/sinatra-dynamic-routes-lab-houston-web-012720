require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @reversename = params[:name].reverse
    "#{@reversename}"
  # "#{params[:name].reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i**2
    "#{@square}"
  end

  get '/say/:number/:phrase' do 
    answer = ''
    params[:number].to_i.times{answer += params[:phrase]}
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = [params[:word1],params[:word2],params[:word3],params[:word4],params[:word5]] 
    sentence = words.join(" ")
    "#{sentence}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    
    case params[:operation]
    when 'add' then (num1 + num2).to_s
    when 'subtract' then (num1 - num2).to_s
    when 'multiply' then (num1 * num2).to_s
    when 'divide' then (num1/num2).to_s
    end

  end
end