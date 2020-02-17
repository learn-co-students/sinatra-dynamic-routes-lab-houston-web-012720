require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do 
    @name = params[:name].split("").reverse().join("")
    "#{@name}"
  end

  get "/square/:number" do 
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get "/say/:number/:pharse" do 
    @pharse = params[:pharse].split("%20").join(" ")
    @number = params[:number].to_i
    "#{@pharse}" * @number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @words = []
    for i in 1..5
      @pharse = params["word#{i}".to_sym]
      if i == 5
        @pharse += "."
      end
      @words << @pharse
    end
    @words.join(" ")
  end

  get "/:operation/:number1/:number2" do 
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case @operation
    when "add"
      "#{@number1 + @number2}"
    when "subtract"
      "#{@number1 - @number2}"
    when "multiply"
      "#{@number1 * @number2}"
    when "divide"
      "#{@number1 / @number2}"
    end
  end
end