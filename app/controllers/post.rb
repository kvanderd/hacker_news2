get "/post/:id" do
  puts params
  @post = Post.find(params[:id])
  erb :post_by_id
end

get "/post/create/:id" do
   @user = User.find(params[:id])
   erb :new_post
end

post '/post/create/:id' do

  post = Post.create(params[:post])
  current_user.posts << post
  redirect "/post/#{post.id}"
end

