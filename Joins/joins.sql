CREATE TABLE inj1(
    pk_id SERIAL,
    col VARCHAR(2) UNIQUE
);

DROP TABLE inj2;

SELECT * FROM inj1;

INSERT INTO inj1 (col) VALUES ('LA'),('LB'),('LC'),('LD'),('LE');

CREATE TABLE inj2(
    fk_id INT NOT NULL,
    col VARCHAR(2)
);

SELECT * FROM inj2;

INSERT INTO inj2 (fk_id, col) VALUES (1, 'RA'), (2, 'RB'), (2,'RC'),(6,'RD'),(7,'RE');

-- Inner Join
SELECT * FROM inj1 JOIN inj2 ON inj1.pk_id = inj2.fk_id;
-- Left Outer Join
SELECT * FROM inj1 LEFT JOIN inj2 ON inj1.pk_id = inj2.fk_id;
-- Right Outer Join
SELECT * FROM inj1 RIGHT JOIN inj2 on inj1.pk_id = inj2.fk_id;
-- FULL JOIN
SELECT * FROM inj1 FULL JOIN inj2 on inj1.pk_id = inj2.fk_id;


