CREATE TABLE IF NOT EXISTS SHOPS( SHOP_ID VARCHAR(50) PRIMARY KEY, SHOP_NAME TEXT  NOT NULL,LOCATION TEXT,PICTURE MEDIUMTEXT);
CREATE TABLE IF NOT EXISTS PRODUCTS(PRODUCT_ID VARCHAR(50) PRIMARY KEY, PRODUCT_NAME VARCHAR(50) UNIQUE NOT NULL,PRICE_TYPE INTEGER NOT NULL,PICTURE MEDIUMTEXT);
CREATE TABLE IF NOT EXISTS PRICES(SHOP_ID VARCHAR(50) NOT NULL REFERENCES SHOPS(SHOP_ID), PRODUCT_ID VARCHAR(50) NOT NULL REFERENCES PRODUCTS(PRODUCT_ID),PRICE DECIMAL(7,2) NOT NULL, CATEGORY INT);