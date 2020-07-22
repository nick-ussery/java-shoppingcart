-- noinspection SqlDialectInspectionForFile

-- noinspection SqlNoDataSourceInspectionForFile

DELETE
FROM cartitems;

DELETE
FROM products;

DELETE
FROM carts;

DELETE
FROM users;

INSERT INTO USERS(USERID, USERNAME, PASSWORD, COMMENTS, CREATED_BY, CREATED_DATE, LAST_MODIFIED_BY, LAST_MODIFIED_DATE)
     VALUES (1, 'barnbarn', 'LambdaLlama', '', 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP),
            (2, 'cinnamon', 'LambdaLlama', '', 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP),
            (3, 'stumps', 'LambdaLlama', '', 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP);

INSERT INTO PRODUCTS(PRODUCTID, NAME, DESCRIPTION, PRICE, COMMENTS, CREATED_BY, CREATED_DATE, LAST_MODIFIED_BY, LAST_MODIFIED_DATE)
     VALUES (1, 'PEN', 'MAKES WORDS', 2.50, '', 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP),
            (2, 'PENCIL', 'DOES MATH', 1.50, '', 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP),
            (3, 'COFFEE', 'EVERYONE NEEDS COFFEE', 4.00, '', 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP);

INSERT INTO CARTS(CARTID, USERID, CREATED_BY, CREATED_DATE, LAST_MODIFIED_BY, LAST_MODIFIED_DATE)
     VALUES (1, 1, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP),
            (2, 1, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP),
            (3, 3, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP);

INSERT INTO CARTITEMS(CARTID, PRODUCTID, QUANTITY, COMMENTS, CREATED_BY, CREATED_DATE, LAST_MODIFIED_BY, LAST_MODIFIED_DATE)
     VALUES (1, 1, 4, '', 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP),
            (1, 2, 3, '', 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP),
            (1, 3, 2, '', 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP),
            (2, 3, 1, '', 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP),
            (3, 3, 17, '', 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP);

INSERT INTO ROLES(ROLEID, NAME)
    VALUES(1,'ADMIN'),
          (2, 'USER');

INSERT INTO USERROLES(USERID, ROLEID)
    VALUES(1,1),
          (2,1),
          (3,2);
/*
We must tell hibernate the ids that have already been used.
The number must be larger than the last used id.
15 > 3 so we are good!
 */

alter sequence hibernate_sequence restart with 15;
