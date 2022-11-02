CREATE TABLE user (
                      tg_id VARCHAR(30) NOT NULL,
                      role SMALLINT NOT NULL,
                      time_from TIME,
                      time_to TIME,
                      PRIMARY KEY (tg_id)
);
CREATE TABLE category (
                          id INT NOT NULL,
                          name VARCHAR(20) NOT NULL,
                          message VARCHAR(20) NOT NULL,
                          PRIMARY KEY (id)
);
CREATE TABLE  user_category (
                                category_id INT NOT NULL,
                                user_tg_id VARCHAR(30) NOT NULL,
                                CONSTRAINT user_fk FOREIGN KEY (user_tg_id) REFERENCES user(tg_id) ON DELETE CASCADE ON UPDATE CASCADE,
                                CONSTRAINT category_fk FOREIGN KEY (category_id) REFERENCES category(id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE settings (
                          name VARCHAR(20) NOT NULL,
                          value VARCHAR(50) NOT NULL
)