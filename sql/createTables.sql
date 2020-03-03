\c quiz

CREATE TABLE IF NOT EXISTS kayttajat(
id SERIAL PRIMARY KEY NOT NULL,
nimi VARCHAR(20) NOT NULL);


CREATE TABLE IF NOT EXISTS  pisteet(
id SERIAL PRIMARY KEY NOT NULL,
kayttaja_id INT NOT NULL,
pisteet INT,
pvm DATE,
FOREIGN KEY (kayttaja_id) REFERENCES kayttajat(id));


CREATE TABLE IF NOT EXISTS aiheet(
id SERIAL PRIMARY KEY NOT NULL, 
aihealua VARCHAR(150) NOT NULL);


CREATE TABLE IF NOT EXISTS kysymykset(
id SERIAL PRIMARY KEY NOT NULL,
aihe_id INT NOT NULL,
kysymys VARCHAR(250) NOT NULL,
FOREIGN KEY (aihe_id) REFERENCES aiheet(id));


CREATE TABLE IF NOT EXISTS vastaukset(
id SERIAL PRIMARY KEY NOT NULL,
kysymys_id INT,
vastaus VARCHAR(250) NOT NULL,
oikein boolean NOT NULL,
FOREIGN KEY (kysymys_id) REFERENCES kysymykset(id));