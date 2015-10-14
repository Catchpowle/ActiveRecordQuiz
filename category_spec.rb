require_relative 'helper'

describe Category do
  it "has many posts" do
    category = Category.create!(name: "Science")
    Post.create!(title: "Life on Mars", content: "Scientists have discovered",
      category: category)
    category.posts.empty?.must_equal(false)
  end

  it "belongs to a blog" do
    blog = Blog.create!(name: "Patty's blog")
    blog.categories.create!(name: "Science")
    blog.categories.empty?.must_equal(false)
  end

end
