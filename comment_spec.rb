require_relative 'helper'
describe Comment do
  it "belongs to post" do
    post = Post.create!(title: "My post", content: "This is my post")
    post.comments.create!(content: "This is a great post!")
    post.comments.empty?.must_equal(false)
  end
end
