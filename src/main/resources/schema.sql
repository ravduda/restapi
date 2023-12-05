CREATE TABLE POST (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(400) NOT NULL,
    CONTENT VARCHAR(2000) NULL,
    created TIMESTAMP
);
CREATE TABLE COMMENT (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    post_id BIGINT NOT NULL,
    content VARCHAR(2000) NULL,
    created TIMESTAMP,
    FOREIGN KEY (post_id) REFERENCES POST(id)
);
CREATE TABLE USER (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(200) NULL,
    lastname VARCHAR(200) NULL,
    email VARCHAR(200) NULL,
    password VARCHAR(200) NULL,
    role VARCHAR(200) NULL
);