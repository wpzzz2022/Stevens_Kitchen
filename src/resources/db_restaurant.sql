-- database name: "db_restaurant"

CREATE TABLE food( 
    food_id INT(11) PRIMARY KEY AUTO_INCREMENT, 
    food_name VARCHAR(255), 
    food_star VARCHAR(255),
    food_vote VARCHAR(255),
    food_price VARCHAR(255),
    food_discount VARCHAR(255),
    food_desc VARCHAR(255),
    food_status VARCHAR(255),
    food_type VARCHAR(255),
    food_category VARCHAR(255),
    food_src VARCHAR(255)
) ENGINE=INNODB;

INSERT INTO food (food_name, food_star, food_vote, food_price, food_discount, food_desc, food_status, food_type, food_category, food_src)
VALUES("lion head","4.5", "999", "12.00", "0.00", "03 pieces per serving", "best seller", "meat", "pork", "pork/pork-1.jpg"),
("pig foot","4.5", "999", "15.00", "3.00", "03 pieces per serving", "best seller", "meat", "pork", "pork/pork-2.jpg"),
("sweeet sour rib","4.5","500","12.00","0.00","03 pieces per serving","best seller","meat","pork","pork/pork-3.jpg"),
("garlic pork belly","4.5","999","13.00","2.00","03 pieces per serving","best seller","meat","pork","pork/pork-4.jpg"),
("bbq pork belly","4","500","11.00","0.00","03 pieces per serving","normal","meat","pork","pork/pork-5.jpg"),
("tomato beef","4.5","600","14.00","0.00","01 roll per serving","new dishes","meat","beef","beef/beef-1.jpg"),
("potato beef","4.5","999","15.00","3.00","01 roll per serving","best seller","meat","beef","beef/beef-2.jpg"),
("marinated beef","4.5","999","14.00","0.00","01 roll per serving","best seller","vegan","beef","beef/beef-3.jpg"),
("NY steak","4.5","999","12.00","2.00","01 roll per serving","new dishes","meat","beef","beef/beef-4.jpg"),
("beef wellington","4.5","999","14.00","0.00","01 roll per serving","best seller","meat","beef","beef/burrito-5.jpg"),
("mushroom chicken","4","699","12.00","2.00","01 tray per serving","best seller","meat","chicken","chicken/chicken-1.jpg"),
("baby choy chicken","4.5","999","12.00","0.00","01 tray per serving","best seller","meat","chicken","chicken/chicken-2.jpg"),
("chicken soup","4.5","999","17.00","2.00","01 tray per serving","best seller","meat","chicken","chicken/chicken-3.jpg"),
("fried chicken strips","4.5","999","11.00","0.00","01 tray per serving","best seller","meat","chicken","chicken/chicken-4.jpg"),
("dumplings","3.5","699","5.00","1.00","01 bowl per serving","new dishes seasonal dishes","vegan","sides","side/side-1.jpg"),
("egg pudding","4.5","999","7.00","0.00","05 pieces per serving","best seller","vegan","dessert","dessert/dessert-1.jpg"),
("cheese cake","4.5","999","5.00","1.00","01 piece per serving","best seller","vegan","dessert","dessert/dessert-2.jpg"),
("coca cola","4.5","999","5.00","0.00","01 glass per serving","best seller","vegan","drink","drink/drink-1.png"); 


CREATE TABLE user( 
    user_id INT(11) PRIMARY KEY AUTO_INCREMENT, 
    user_name VARCHAR(255), 
    user_email VARCHAR(255),
    user_phone VARCHAR(255),
    user_password VARCHAR(255),
    user_birth VARCHAR(255),
    user_gender VARCHAR(255)
) ENGINE=INNODB;


CREATE TABLE cart (
  user_id INT,
  food_id INT,
  item_qty INT,
  primary key (user_id, food_id)
);


CREATE TABLE booktable( 
    book_id INT(11) PRIMARY KEY AUTO_INCREMENT, 
    book_name VARCHAR(255), 
    book_phone VARCHAR(255),
    book_people INT,
    book_tables INT,
    user_id INT,
    book_when VARCHAR(255),
    book_note TEXT
) ENGINE=INNODB;


CREATE TABLE billdetails (
  bill_id INT,
  food_id INT,
  item_qty INT,
  primary key (bill_id, food_id)
);

CREATE TABLE billstatus (
  bill_id INT,
  user_id INT,
  bill_phone VARCHAR(255),
  bill_address TEXT,
  bill_when VARCHAR(255),
  bill_method VARCHAR(255),
  bill_discount INT,
  bill_delivery INT,
  bill_total INT,
  bill_paid VARCHAR(255),
  bill_status INT,
  primary key (bill_id)
);