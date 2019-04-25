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
    i = 0
    @num = params[:number].to_i
    @phrase = params[:phrase]
    while i < @num
      puts "#{@phrase}"
    end
  end
    
end