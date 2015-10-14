require_relative 'helper'
describe Tag do
  it "has many taggings" do
    post = Post.create!(title: "Sunny", content: "The sunlight is great!")
    tag = Tag.create!(name: "Nature")
    tagging = Tagging.create!(post: post, tag: tag)
    tag.taggings.empty?.must_equal(false)
  end
end
