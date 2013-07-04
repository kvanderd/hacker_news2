enable :sessions

get '/' do
  @all_posts = Post.all
  # Look in app/views/index.erb
  erb :index
end


# get "/upvote/:id/:id" do
#  puts "I am here"
# end


post '/post/:id/votes' do
  content_type :json
  post = Post.find(params[:id])
  user = current_user.id
  postvote = PostVote.create(user_id: user, post_id: post.id)
  # redirect "/"
  {postvote: "postvote"}.to_json
end