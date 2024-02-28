USE quanlybanhang;

INSERT INTO customer (cID, cName, cAge)
    VALUES (1, 'Minh Quan', 10);
INSERT INTO customer (cID, cName, cAge)
    VALUES (2, 'Ngoc Oanh', 20);
INSERT INTO customer (cID, cName, cAge)
    VALUES (3, 'Hong Ha', 50);

INSERT INTO orders (oID, cID, oDate, oTotalPrice)
    VALUES (1, 1, 20060321, NULL);
INSERT INTO orders (oID, cID, oDate, oTotalPrice)
    VALUES (2, 2, 20060323, NULL);
INSERT INTO orders (oID, cID, oDate, oTotalPrice)
    VALUES (3, 1, 20060316, NULL);

INSERT INTO product (pID, pName, pPrice)
    VALUES (1, 'May Giat', 3);
INSERT INTO product (pID, pName, pPrice)
    VALUES (2, 'Tu Lanh', 5);
INSERT INTO product (pID, pName, pPrice)
    VALUES (3, 'Dieu Hoa', 7);
INSERT INTO product (pID, pName, pPrice)
    VALUES (4, 'Quat', 1);
INSERT INTO product (pID, pName, pPrice)
    VALUES (5, 'Bep Dien', 2);

INSERT INTO orderdetail (oID, pID, odQTY)
    VALUES (1, 1, 3);
INSERT INTO orderdetail (oID, pID, odQTY)
    VALUES (1, 3, 7);
INSERT INTO orderdetail (oID, pID, odQTY)
    VALUES (1, 4, 2);
INSERT INTO orderdetail (oID, pID, odQTY)
    VALUES (2, 1, 1);
INSERT INTO orderdetail (oID, pID, odQTY)
    VALUES (3, 1, 8);
INSERT INTO orderdetail (oID, pID, odQTY)
    VALUES (2, 5, 4);
INSERT INTO orderdetail (oID, pID, odQTY)
    VALUES (2, 3, 3);
	
SELECT oID, oDate, oTotalPrice FROM orders;

SELECT c.cName, p.pName, od.odQTY FROM customer c
JOIN orders o ON c.cID = o.cID
JOIN orderdetail od ON o.oID = od.oID
JOIN product p ON od.pID = p.pID;


# Check this again
SELECT * FROM customer c
LEFT JOIN orders o ON c.cID = o.cID
WHERE o.oID IS NULL;
/*GROUP BY (c.cID)
HAVING COUNT(o.cID) = 0;*/

SELECT o.oID, DATE(o.oDate), (p.pPrice * od.odQTY) AS price  FROM orders o
JOIN orderdetail od ON o.oID = od.oID
JOIN product p ON od.pID = p.pID
