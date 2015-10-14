require_relative 'helper'

describe Post do
  it 'belongs to an author' do
    author = Author.create!(name: 'bob')
    author.posts.create!(title: "Sharks", content: "Big teeth")
    author.posts.empty?.must_equal(false)

  end

  it 'has many comments' do
    post = Post.create!(title: "Sharks", content: "Big teeth")
    post.comments.create!(content: "OMG!")
    post.comments.create!(content: "meh")
    post.comments.length.must_equal(2)
  end

  it 'belongs to a category' do
    category = Category.create!(name: "Elephants")
    category.posts.create!(title: "Sharks", content: "Big teeth")
    category.posts.empty?.must_equal(false)
  end

  it 'belongs to a blog through a category' do
    blog = Blog.create!(name: "Jon's lovely blog")
    category = blog.categories.create!(name: "loveliness")
    author = Author.create!(name: 'bob')
    # category = Category.create!
    Post.create!(title: "Lovely", content: "blog", author: author, category: category)
    blog.posts.empty?.must_equal(false)
  end

  it 'has many tags through taggings' do
    tag = Tag.create!(name: "Thing")
    author = Author.create!(name: 'bob')
    post = Post.create!(title: "Lovely", content: "blog", author: author)
    taggings = Tagging.create!(post: post, tag: tag)
    # taggings = post.taggings.create!(tag: tag)

    post.tags.empty?.must_equal(false)
  end
end
