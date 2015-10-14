require_relative 'helper'

describe Tagging do
  it "belongs to a post" do
    post = Post.create!(title: "Man wears coat", content: "We'll keep you updated")
    post.taggings.create!()
    post.taggings.empty?.must_equal(false)
  end

  it "belongs to a tag" do
    tag = Tag.create!(name: "Octopi")
    tag.taggings.create!()
    tag.taggings.empty?.must_equal(false)
  end
end
