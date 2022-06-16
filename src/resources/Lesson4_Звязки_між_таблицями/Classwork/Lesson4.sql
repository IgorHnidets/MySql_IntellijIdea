use work;

 select name from  blog where blog_id = 1;
 SELECT text,blog_id from articles;

CREATE TABLE tags(
    tag_id INT NOT NULL  AUTO_INCREMENT,
    text VARCHAR(25),
    PRIMARY KEY (tag_id)
);

CREATE TABLE Articles_Tags(
    article_id INT NOT NULL ,
    tag_id INT NOT NULL,
    CONSTRAINT  id PRIMARY KEY (article_id,tag_id),
    FOREIGN KEY (article_id) REFERENCES articles(article_id),
    FOREIGN KEY (tag_id) REFERENCES tags(tag_id)
);

create table articles (
   article_id INT AUTO_INCREMENT NOT NULL ,
   text TEXT,
   blog_id INT,
   PRIMARY KEY (article_id),
   FOREIGN KEY (blog_id) REFERENCES blog(blog_id)
);


CREATE TABLE  blog(
    blog_id INT AUTO_INCREMENT NOT NULL ,
    name VARCHAR(50),
    PRIMARY KEY (blog_id)
);