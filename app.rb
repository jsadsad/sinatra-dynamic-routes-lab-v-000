require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end
  
  get '/square/:number' do
    @product = params[:number].to_i * params[:number].to_i
    "#{@product}"
  end
  
  get '/say/:number/:phrase' do
    str = ''
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times do
      str += @phrase
    end
  end
    
end