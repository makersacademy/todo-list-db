require 'sinatra/base'
require_relative 'lib/todo.rb'

class TodoListApp < Sinatra::Base
  get '/' do
    "hello world"
  end
  get '/todos' do
    @items = Todo.all
    erb :todos
  end
end
