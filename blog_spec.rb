require_relative 'helper'

describe Blog do
  it 'has many posts through categories' do
    blog = Blog.create!(name: 'BenBlog')
    # author = blog.authors.create!(name: 'Ben Lovell')
    category = blog.categories.create!(name: 'Motorsports')
    author = Author.create!(name: 'bob')

    Post.create!(
      title: 'Formula 1',
      content: 'My first post',
      author: author,
      category: category
    )

    blog.posts.empty?.must_equal(false)
  end

  # it 'has many authors'

  it 'has many categories' do
    blog = Blog.create!(name: 'BenBlog')
    blog.categories.create!(name: 'Motorsports')
    blog.categories.create!(name: 'Sharks')
    blog.categories.create!(name: 'Motorsharks')
    blog.categories.length.must_equal(3)
  end
end
