require 'sinatra'

post '/generate_text.rb' do
  word_count = params[:wordCount].to_i
  paragraph_count = params[:paragraphCount].to_i
  list_count = params[:listCount].to_i

  lorem_text = "<p>" + "Lorem ipsum dolor sit amet, consectetur adipiscing elit. " * word_count + "</p>"
  lorem_text *= paragraph_count

  list_text = "<ul>"
  list_text += "<li>" + "List item" + "</li>" * (word_count - 1) + "</li>"
  list_text += "</ul>"
  list_text *= list_count

  result = lorem_text + list_text

  erb result
end
