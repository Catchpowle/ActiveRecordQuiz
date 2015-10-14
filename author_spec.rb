require_relative 'helper'

describe Author do
  it "has many posts" do
    author = Author.create!(name: "Cervantes")
    author.posts.create!(title: "Death everywhere!", content: "lol jk")
    author.posts.empty?.must_equal(false)
  end
end
