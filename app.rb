require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number].to_i ** 2
    num.to_s
  end 

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @bigger_phrase = ""
    count = 0
    until count == @num
      @bigger_phrase += @phrase
      count += 1
    end 
    @bigger_phrase
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end 

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
      result = (@num1 + @num2) 
      result.to_s
    elsif @operation == "subtract"
        result = (@num1 - @num2)
        result.to_s 
    elsif @operation == "multiply"
        result = (@num1 * @num2)
        result.to_s 
    elsif @operation == "divide"
        result = (@num1 / @num2)
        result.to_s
    end 
  end 

end