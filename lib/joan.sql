CREATE  TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT
    name VARCHAR(90)
    email TEXT UNIQUE NOT NULL
);

-- 1 user relates exactly with 1 record or the other table
--user1 =1, user2= 2

CREATE TABLE user_profiles (
    id INTEGER PRIMARY KEY AUTOINCREMENT
    bio TEXT
    profile_pic TEXT
    user_id INTEGER UNIQUE
    FOREIGN KEY (user_id) REFERENCES users (user_id)
);

--one to many
CREATE TABLE posts (
    id INTEGER PRIMARY KEY AUTOINCREMENT
    title TEXT
    content TEXT
    user_id INTEGER
    FOREIGN KEY (user_id) REFERENCES users (id)
);