
DROP DATABASE IF EXISTS cryptobob_db;

CREATE DATABASE cryptobob_db;

USE cryptobob_db;

CREATE TABLE users (
    id INTEGER AUTO_INCREMENT,
    userName VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(1000) NOT NULL,
    default_currency VARCHAR(100) NOT NULL,
    watchlistArray VARCHAR(500) NOT NULL,
    notificationsArray VARCHAR(500) NOT NULL,
    exchangeSecret VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE notifications (
    id INTEGER AUTO_INCREMENT,
    data VARCHAR(1000) NOT NULL,
    PRIMARY KEY (id)
)

CREATE TABLE currencies (
    id INTEGER AUTO_INCREMENT,
    currency VARCHAR(100) NOT NULL,
    currencyLong VARCHAR(100) NOT NULL,
    txfee VARCHAR(100) NOT NULL,
    PRIMARY KEY (id) 
);

CREATE TABLE eth (
    id INTEGER AUTO_INCREMENT,
    foreignId VARCHAR(100),
    high VARCHAR(100) NOT NULL,
    low VARCHAR(100) NOT NULL,
    Volume VARCHAR(100) NOT NULL,
    last VARCHAR(100) NOT NULL,
    unixTimestamp VARCHAR(100) NOT NULL,
    bid VARCHAR(100) NOT NULL, 
    ask VARCHAR(100) NOT NULL,
    openBuys VARCHAR(100) NOT NULL,
    openSells VARCHAR(100) NOT NULL,
    prevDay VARCHAR(100) NOT NULL,
    2dayMAVG VARCHAR(100),
    3dayMAVG VARCHAR(100),
    5dayMAVG VARCHAR(100),
    8dayMAVG VARCHAR(100),
    13dayMAVG VARCHAR(100),
    21dayMAVG VARCHAR(100),
    34dayMAVG VARCHAR(100),
    55dayMAVG VARCHAR(100),
    89dayMAVG VARCHAR(100),
    144dayMAVG VARCHAR(100),
    233dayMAVG VARCHAR(100),
    377dayMAVG VARCHAR(100),
    610dayMAVG VARCHAR(100),

    PRIMARY KEY (id)
);

CREATE TABLE btc (
    id INTEGER AUTO_INCREMENT,
    foreignId VARCHAR(100),
    high VARCHAR(100) NOT NULL,
    low VARCHAR(100) NOT NULL,
    Volume VARCHAR(100) NOT NULL,
    last VARCHAR(100) NOT NULL,
    unixTimestamp VARCHAR(100) NOT NULL,
    bid VARCHAR(100) NOT NULL, 
    ask VARCHAR(100) NOT NULL,
    openBuys VARCHAR(100) NOT NULL,
    openSells VARCHAR(100) NOT NULL,
    prevDay VARCHAR(100) NOT NULL,
    2dayMAVG VARCHAR(100),
    3dayMAVG VARCHAR(100),
    5dayMAVG VARCHAR(100),
    8dayMAVG VARCHAR(100),
    13dayMAVG VARCHAR(100),
    21dayMAVG VARCHAR(100),
    34dayMAVG VARCHAR(100),
    55dayMAVG VARCHAR(100),
    89dayMAVG VARCHAR(100),
    144dayMAVG VARCHAR(100),
    233dayMAVG VARCHAR(100),
    377dayMAVG VARCHAR(100),
    610dayMAVG VARCHAR(100),
    PRIMARY KEY (id)
);

CREATE TABLE usd (
    id INTEGER AUTO_INCREMENT,
    foreignId VARCHAR(100),
    high VARCHAR(100) NOT NULL,
    low VARCHAR(100) NOT NULL,
    Volume VARCHAR(100) NOT NULL,
    last VARCHAR(100) NOT NULL,
    unixTimestamp VARCHAR(100) NOT NULL,
    bid VARCHAR(100) NOT NULL, 
    ask VARCHAR(100) NOT NULL,
    openBuys VARCHAR(100) NOT NULL,
    openSells VARCHAR(100) NOT NULL,
    prevDay VARCHAR(100) NOT NULL,
    2dayMAVG VARCHAR(100),
    3dayMAVG VARCHAR(100),
    5dayMAVG VARCHAR(100),
    8dayMAVG VARCHAR(100),
    13dayMAVG VARCHAR(100),
    21dayMAVG VARCHAR(100),
    34dayMAVG VARCHAR(100),
    55dayMAVG VARCHAR(100),
    89dayMAVG VARCHAR(100),
    144dayMAVG VARCHAR(100),
    233dayMAVG VARCHAR(100),
    377dayMAVG VARCHAR(100),
    610dayMAVG VARCHAR(100),
    PRIMARY KEY (id)
);


DROP TABLE cryptoNews;
CREATE TABLE cryptoNews (
    id INT NOT NULL AUTO_INCREMENT,
    _id VARCHAR(255),
    category ENUM('Analysis', 'Blockchain', 'Exchanges', 'Government', 'Mining', 'ICOs'),
    title VARCHAR(255),
    description TINYTEXT,
    url VARCHAR(255),
  PRIMARY KEY (id)
);

INSERT INTO cryptoNews (category, currencyType, news) 
	VALUES ('generalnews', 'bitcoin', 'Know your "why" in any of your endeavors. That will push you through any wall you hit.');
