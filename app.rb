require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @num = params[:number]
    (@num.to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    phrase = ""
    num = params[:number].to_i
    num.times do phrase += "#{params[:phrase]}\n"
    end
    phrase
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if params[:operation] == "add"
      result = num1 + num2
    end
    if params[:operation] == "subtract"
      result = num1 - num2
    end
    if params[:operation] == "multiply"
      result = num1 * num2
    end
    if params[:operation] == "divide"
      result = num1 / num2
    end    
    result.to_s
  end
end