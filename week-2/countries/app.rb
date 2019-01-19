require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'erb'

set :database, { adapter: 'sqlite3', database: 'test.db' }

class Question < ActiveRecord::Base
 
end   

#get '/' do # this part is optional, so that something comes up when you don't specify a URI
  #File.read(File.join('public', 'index.html'))
  
#end

get '/questions' do
    @questions = Question.all
    #SELECT * FROM question
    erb :questions
 end

get '/questions/new' do
    erb :new
end

post '/questions' do
    question = Question.new
    question.question = params[:question]
    question.answer = params[:answer]
    question.flag = params[:flag]
    question.save
    redirect '/questions'
end

get '/questions/edit' do
    @question= Question.find(params[:id])
    erb :edit
end


get '/guess'do
    @questions = Question.all
    index = rand(@questions.length)
    @q = @questions[index]
    erb :guess
end

get '/answer' do
    @question = Question.find(params[:id])
    erb :answer
end

post 'questions/edit' do
    erb :edit
end


get '/country' do
    @country=params[:country].to_i
    erb :questions
end

