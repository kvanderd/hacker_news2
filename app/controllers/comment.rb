post "/post/:id/new_comment" do
  post = Post.find(params[:id])
  comment = Comment.create(comment: params[:comment])
  current_user.comments << comment
  post.comments << comment
  redirect "/post/#{post.id}"

end
