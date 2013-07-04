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
  post = Post.find(params[:id])
  user = current_user.id
  puts "9" * 80
  puts user
  postvote = PostVote.create(user_id: user, post_id: post.id)
  # puts "PostVote: #{postvote}"
  redirect "/"
end