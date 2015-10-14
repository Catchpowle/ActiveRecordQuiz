# Blog Engine

We're going to practice our TDD and ActiveRecord prowess by setting up some
associations.

## Setup

```
bundle
bundle exec ruby spec/blog_spec.rb
```

## TODO

1. Think about the diagrams we made earlier today. Map out on paper the
assoications between our objects: Blog, Post, Author, Category, Tag and Comment.

2. Create a schema for your blog engine, using sqlite3 and hand-written SQL
commands. Use the provided `spec/test.sqlite3` file.

3. Using TDD, start with the blog spec and write tests that test your associations
for one model at a time. We've started you off on the Blog spec. Run the test and
see it fail first.

3. Make the test pass, and then move onto the next model.

4. Send me a PR when you're done.