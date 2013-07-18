# require 'debugger'

get '/' do
  @posts = Post.all
  erb :index
end

get '/posts/:post_id' do
  @post = Post.find(params[:post_id])
  # debugger
  erb :show_post
end

get '/post/create' do

  erb :create_post
end

post '/post/new' do
  @params = Post.create(title: params[:post][:title], body: params[:post][:body])

  redirect to('/')
end
