require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse
  end 
  get '/square/:number' do
    @number = params[:number]
    squre = @number.to_i * @number.to_i
    squre.to_s
  end

  get '/say/:number/:phrase' do 
    @number = params[:number]
    @phrase = params[:phrase]
    
  #   string= []
  #    @number.to_i.times do 
  #     string << @phrase
  #   end 
  #   string.join("\n")
  (1..@number.to_i).map{ |number|@phrase}.join("\n")
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end  
  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    result = if @operation == "add" 
      (@number1 + @number2).to_s
    elsif @operation == "multiply"
       (@number1 * @number2).to_s
      elsif @operation == "subtract"
        (@number1 - @number2).to_s
      elsif @operation == "divide"
        (@number1 / @number2).to_s
      end 
  end
end