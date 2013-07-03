enable :sessions

get '/' do
  @all_posts = Post.all
  # Look in app/views/index.erb
  erb :index
end

get "/create" do
  erb :create_user
end


post '/create' do
  puts params
  user = User.create(params[:user])
  if user
    session[:user] = user.id
  end
  redirect "/"
end

get '/logout' do

  session.clear
  redirect '/'

end

get "/login" do
  erb :login_user
end

post "/login" do 
  user = User.find_by_user_name(params[:user][:user_name])
  authenticate = User.authenticate(params[:user])
  if authenticate
    session[:user] = user.id
  end
  redirect "/"
end


get "/user/:id" do
  @user = User.find(params[:id])
  erb :user_by_id
end

get '/user/:id/posts' do
  @user = User.find(params[:id])
  @posts = @user.posts.all
  erb :users_posts 
end

get '/user/:id/comments' do
  @user = User.find(params[:id])
  @comments = @user.comments.all
  erb :user_comments 
end


get "/post/:id" do
  puts params
  @post = Post.find(params[:id])
  erb :post_by_id
end

