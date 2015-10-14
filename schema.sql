CREATE TABLE blogs(
 id integer  PRIMARY KEY,
 name text
);

CREATE TABLE posts(
  id integer PRIMARY KEY,
  title text,
  content text,
  blog_id integer,
  category_id integer,
  author_id integer,
  FOREIGN KEY(blog_id) REFERENCES blog(id),
  FOREIGN KEY(category_id) REFERENCES category(id),
  FOREIGN KEY(author_id) REFERENCES author(id)
);

CREATE TABLE categories(
 id integer  PRIMARY KEY,
 name text,
 blog_id integer,
 FOREIGN KEY(blog_id) REFERENCES blog(id)
);

CREATE TABLE authors(
 id integer  PRIMARY KEY,
 name text
);

CREATE TABLE comments(
 id integer  PRIMARY KEY,
 content text,
 post_id integer,
 FOREIGN KEY(post_id) REFERENCES post(id)
);

CREATE TABLE taggings(
 id integer  PRIMARY KEY,
 post_id integer,
 tag_id integer,
 FOREIGN KEY(post_id) REFERENCES post(id)
 FOREIGN KEY(tag_id) REFERENCES tag(id)
);

CREATE TABLE tags(
 id integer  PRIMARY KEY,
 name text
);
