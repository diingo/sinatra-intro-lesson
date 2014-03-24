require 'sinatra'

set :bind, '0.0.0.0' # Vagrant fix

get '/' do
  puts params
  "hello"
  "What's up!"
end

get '/time' do
  puts params
  "It is #{Time.now}"
end

get '/best-page-ever' do
  puts params
  "<html><body><p style='color:red'>The story of my life</p></body></html>"
end


get '/view/page' do
  puts params
  erb :my_form
end

post '/view/page' do
  puts params
  @name = params["name"]
  erb :form_result
end


# class Person
#   def initialize(name)
#     @name = name
#   end

#   def my_name
#     puts "my name is #{@name}"
#   end
# end

# x = Person.new("Bart")
# x.my_name
# puts "and more code"



