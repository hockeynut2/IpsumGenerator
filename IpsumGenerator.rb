require 'bundler'
Bundler.require

$word_list = []
f = File.new('./public/baseballipsum.txt', 'r')
f.each_line do |word|
  a = word
  $word_list.push(a)
end

get '/' do
  erb :form
end

post '/' do
  @words = params[:words].to_i
  @paragraphs = params[:paragraphs].to_i
  erb :main
end