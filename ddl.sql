DROP TABLE IF EXISTS kund;

CREATE TABLE kund
(
    id INT,
    fornamn VARCHAR(20),
    efternamn VARCHAR(20),
    adress VARCHAR(20),
    mail VARCHAR(20),
    kreditkort INT NOT NULL,

    PRIMARY KEY (id)
);

CREATE TABLE order
(
    ordernummer INT,
    kund_id INT,

    PRIMARY KEY (ordernummer),
    FOREIGN KEY (kund_id) REFERENCES kund(id)
);

CREATE TABLE produkt
(
    produktkod INT,
    produktnamn VARCHAR(20),
    produktbeskrivning VARCHAR(50),
    produktpris INT,

    PRIMARY KEY (produktkod)
);

CREATE TABLE order2product
(
    order_ordnernummer INT,
    produkt_produktkod INT,
    PRIMARY KEY (order_ordnernummer, produkt_produktkod)
    FOREIGN KEY (order_ordnernummer) REFERENCES order(ordnernummer)
    FOREIGN KEY (produkt_produktkod) REFERENCES produkt(produktkod)
)

CREATE TABLE produktkategori
(
    id INT,
    varumärke VARCHAR(20),
    typ VARCHAR(20),

    PRIMARY KEY (id)
);

CREATE produkt2kategori
(
    produkt_produktkod INT,
    produktkategori_id INT,

    PRIMARY KEY(produktkod, produktkategori_id)
    FOREIGN KEY(produkt_produktkod) REFERENCES produkt(produktkod)
    FOREIGN KEY(produktkategori_id) REFERENCES produktkategori(id)
)


