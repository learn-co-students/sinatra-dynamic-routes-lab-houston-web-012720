require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end  

  get '/square/:number' do
    @product = params[:number].to_i * params[:number].to_i
    "#{@product}"
  end  

  get '/say/:number/:phrase' do
    @new_msg = ""
    params[:number].to_i.times do
      @new_msg += params[:phrase]
    end 
    @new_msg 
  end  

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end  

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"  
      @product = params[:number1].to_i + params[:number2].to_i
    when "subtract"  
      @product = params[:number1].to_i - params[:number2].to_i
    when "multiply"  
      @product = params[:number1].to_i * params[:number2].to_i
    when "divide"  
      @product = params[:number1].to_i / params[:number2].to_i
    end  
    "#{@product}"
  end  

end
