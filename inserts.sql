-- ------------------ --
-- Start User Inserts --
-- ------------------ --



INSERT INTO USERS (
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    PHONE,
    DATE_JOINED
) VALUES ( 'Refrigerator',
           'Jones',
           'j.fridge@yahoo.com',
           '7018279341',
           SYSDATE );

INSERT INTO USERS (
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    PHONE,
    DATE_JOINED
) VALUES ( 'Extraneous',
           'Dinkman',
           'dinkman0808@gmail.com',
           '5408713341',
           SYSDATE );

INSERT INTO USERS (
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    PHONE,
    DATE_JOINED
) VALUES ( 'Paps',
           'Malone',
           'cup_o_hennessy@fbi.gov',
           '4289736395',
           SYSDATE );

INSERT INTO USERS (
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    PHONE,
    DATE_JOINED
) VALUES ( 'Hamhock',
           'Punching',
           'guaranteed_pork@earthlink.net',
           '4442538774',
           SYSDATE );

-- ---------------------- --
-- Start Customer Inserts --
-- ---------------------- --

INSERT INTO CUSTOMERS (
    USER_ID,
    SHIPPING_STREET,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( (
    SELECT
        USER_ID
    FROM
        USERS
    WHERE
        EMAIL = 'lfl89@su.edu'
),
           '200 Academy Dr',
           'Front Royal',
           'VA',
           '22630',
           '200 Academy Dr',
           'Front Royal',
           'VA',
           '22630' );

INSERT INTO CUSTOMERS (
    USER_ID,
    SHIPPING_STREET,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( (
    SELECT
        USER_ID
    FROM
        USERS
    WHERE
        EMAIL = 'akeene19@su.edu'
),
           '1460 University Dr',
           'Winchester',
           'VA',
           '22601',
           '1460 University Dr',
           'Winchester',
           'VA',
           '22601' );

INSERT INTO CUSTOMERS (
    USER_ID,
    SHIPPING_STREET,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( (
    SELECT
        USER_ID
    FROM
        USERS
    WHERE
        EMAIL = 'ebf68@su.edu'
),
           '1460 University Dr',
           'Winchester',
           'VA',
           '22601',
           '1460 University Dr',
           'Winchester',
           'VA',
           '22601' );

INSERT INTO CUSTOMERS (
    USER_ID,
    SHIPPING_STREET,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( (
    SELECT
        USER_ID
    FROM
        USERS
    WHERE
        EMAIL = 'wth63@su.edu'
),
           '1460 University Dr',
           'Winchester',
           'VA',
           '22601',
           '1460 University Dr',
           'Winchester',
           'VA',
           '22601' );

INSERT INTO CUSTOMERS (
    USER_ID,
    SHIPPING_STREET,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( (
    SELECT
        USER_ID
    FROM
        USERS
    WHERE
        EMAIL = 'dustin.delgross@su.edu'
),
           '200 Academy Dr',
           'Front Royal',
           'VA',
           '22630',
           '200 Academy Dr',
           'Front Royal',
           'VA',
           '22630' );

INSERT INTO CUSTOMERS (
    USER_ID,
    SHIPPING_STREET,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( (
    SELECT
        USER_ID
    FROM
        USERS
    WHERE
        EMAIL = 'j.fridge@yahoo.com'
),
           '1400 Defense Pentagon',
           'Washington',
           'DC',
           '20301',
           '1400 Defense Pentagon',
           'Washington',
           'DC',
           '20301' );

INSERT INTO CUSTOMERS (
    USER_ID,
    SHIPPING_STREET,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( (
    SELECT
        USER_ID
    FROM
        USERS
    WHERE
        EMAIL = 'dinkman0808@gmail.com'
),
           '4401 4th Ave S',
           'Seattle',
           'WA',
           '98134',
           '5701 8th Ave NE',
           'Seattle',
           'WA',
           '98105' );

INSERT INTO CUSTOMERS (
    USER_ID,
    SHIPPING_STREET,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( (
    SELECT
        USER_ID
    FROM
        USERS
    WHERE
        EMAIL = 'cup_o_hennessy@fbi.gov'
),
           '74 King St',
           'St. Augustine',
           'FL',
           '32084',
           '74 King St',
           'St. Augustine',
           'FL',
           '32084' );

INSERT INTO CUSTOMERS (
    USER_ID,
    SHIPPING_STREET,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( (
    SELECT
        USER_ID
    FROM
        USERS
    WHERE
        EMAIL = 'guaranteed_pork@earthlink.net'
),
           '6510 Centerwalk Dr. Apt A',
           'Winter Park',
           'FL',
           '32792',
           '6510 Centerwalk Dr. Apt A',
           'Winter Park',
           'FL',
           '32792' );


-- -------------------- --
-- Start Seller Inserts --
-- -------------------- --

INSERT INTO SELLERS (
    USER_ID,
    STORE_NAME
) VALUES ( (
    SELECT
        USER_ID
    FROM
        USERS
    WHERE
        EMAIL = 'lfl89@su.edu'
),
           'Dort''s Cool Shorts' );

INSERT INTO SELLERS (
    USER_ID,
    STORE_NAME
) VALUES ( (
    SELECT
        USER_ID
    FROM
        USERS
    WHERE
        EMAIL = 'akeene19@su.edu'
),
           'Abby''s Data' );

INSERT INTO SELLERS (
    USER_ID,
    STORE_NAME
) VALUES ( (
    SELECT
        USER_ID
    FROM
        USERS
    WHERE
        EMAIL = 'ebf68@su.edu'
),
           'Jack''s Bananas' );

INSERT INTO SELLERS (
    USER_ID,
    STORE_NAME
) VALUES ( (
    SELECT
        USER_ID
    FROM
        USERS
    WHERE
        EMAIL = 'wth63@su.edu'
),
           'Will''s Bills' );

INSERT INTO SELLERS (
    USER_ID,
    STORE_NAME
) VALUES ( (
    SELECT
        USER_ID
    FROM
        USERS
    WHERE
        EMAIL = 'dustin.delgross@su.edu'
),
           'Bella''s Hats' );

-- ----------------------- --
-- Start Warehouse Inserts --
-- ----------------------- --

INSERT INTO WAREHOUSES (
    LOCATION,
    SHIPPING_STREET,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( 'Scholastic and Educational Goods',
           '1460 University Dr',
           'Winchester',
           'VA',
           '22601',
           '1460 University Dr',
           'Winchester',
           'VA',
           '22601' );

INSERT INTO WAREHOUSES (
    LOCATION,
    SHIPPING_STREET,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( 'Digital and Technology',
           '200 Academy Dr',
           'Front Royal',
           'VA',
           '22630',
           '200 Academy Dr',
           'Front Royal',
           'VA',
           '22630' );

INSERT INTO WAREHOUSES (
    LOCATION,
    SHIPPING_STREET,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( 'Hardware',
           '2350 Legge Blvd',
           'Winchester',
           'VA',
           '22601',
           '2350 Legge Blvd',
           'Winchester',
           'VA',
           '22601' );

INSERT INTO WAREHOUSES (
    LOCATION,
    SHIPPING_STREET,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( 'Clothing',
           '300 Admiral Byrd Dr',
           'Winchester',
           'VA',
           '22602',
           '300 Admiral Byrd Dr',
           'Winchester',
           'VA',
           '22602' );

INSERT INTO WAREHOUSES (
    LOCATION,
    SHIPPING_STREET,
    SHIPPING_CITY,
    SHIPPING_STATE,
    SHIPPING_ZIP,
    BILLING_STREET,
    BILLING_CITY,
    BILLING_STATE,
    BILLING_ZIP
) VALUES ( 'Imported Goods',
           '165 Business Blvd',
           'Clear Brook',
           'VA',
           '22624',
           '165 Business Blvd',
           'Clear Brook',
           'VA',
           '22624' );

-- --------------------- --
-- Start Product Inserts --
-- --------------------- --

INSERT INTO PRODUCTS (
    WAREHOUSE_ID,
    SELLER_ID,
    SUPPLIER_NAME,
    NAME,
    DESCRIPTION,
    PRICE,
    CATEGORY,
    QTY,
    LAST_RESTOCK_DATE
) VALUES ( (
    SELECT
        WAREHOUSE_ID
    FROM
        WAREHOUSES
    WHERE
        LOCATION = 'Clothing'
),
           (
               SELECT
                   SELLER_ID
               FROM
                   SELLERS
               WHERE
                   STORE_NAME = 'Dort''s Cool Shorts'
           ),
           'Denim and More',
           'Junk Drawers',
           'Junk in the trunk? Not a problem for these bad boys.',
           20.99,
           'Cake Apparel',
           38,
           SYSDATE );
           
INSERT INTO PRODUCTS (
    WAREHOUSE_ID,
    SELLER_ID,
    SUPPLIER_NAME,
    NAME,
    DESCRIPTION,
    PRICE,
    CATEGORY,
    QTY,
    LAST_RESTOCK_DATE
) VALUES ( (
    SELECT
        WAREHOUSE_ID
    FROM
        WAREHOUSES
    WHERE
        LOCATION = 'Digital and Technology'
),
           (
               SELECT
                   SELLER_ID
               FROM
                   SELLERS
               WHERE
                   STORE_NAME = 'Abby''s Data'
           ),
           'Amazon Web Services',
           '$150 Cryptocurrency Gift Card',
           'Ever wanted to buy a soda with cryptocurrency, but they just wouldn''t take it? Try crypto on-the-go.',
           150,
           'Finance',
           740219,
           SYSDATE );

INSERT INTO PRODUCTS (
    WAREHOUSE_ID,
    SELLER_ID,
    SUPPLIER_NAME,
    NAME,
    DESCRIPTION,
    PRICE,
    CATEGORY,
    QTY,
    LAST_RESTOCK_DATE
) VALUES ( (
    SELECT
        WAREHOUSE_ID
    FROM
        WAREHOUSES
    WHERE
        LOCATION = 'Imported Goods'
),
           (
               SELECT
                   SELLER_ID
               FROM
                   SELLERS
               WHERE
                   STORE_NAME = 'Jack''s Bananas'
           ),
           'Monsanto',
           'Jack''s Useful Plantains',
           'When you''re a hammer, everything looks like a nail. When you''re a banana... everything''s appealing.',
           4.20,
           'Utility Fruits',
           42,
           SYSDATE );

INSERT INTO PRODUCTS (
    WAREHOUSE_ID,
    SELLER_ID,
    SUPPLIER_NAME,
    NAME,
    DESCRIPTION,
    PRICE,
    CATEGORY,
    QTY,
    LAST_RESTOCK_DATE
) VALUES ( (
    SELECT
        WAREHOUSE_ID
    FROM
        WAREHOUSES
    WHERE
        LOCATION = 'Scholastic and Educational Goods'
),
           (
               SELECT
                   SELLER_ID
               FROM
                   SELLERS
               WHERE
                   STORE_NAME = 'Will''s Bills'
           ),
           'Duckworth Worldwide',
           'Mallard Mania November Nonsense',
           'What''s good for the goose is good for the gander... And you!',
           5,
           'Goose Goods',
           673,
           SYSDATE );

INSERT INTO PRODUCTS (
    WAREHOUSE_ID,
    SELLER_ID,
    SUPPLIER_NAME,
    NAME,
    DESCRIPTION,
    PRICE,
    CATEGORY,
    QTY,
    LAST_RESTOCK_DATE
) VALUES ( (
    SELECT
        WAREHOUSE_ID
    FROM
        WAREHOUSES
    WHERE
        LOCATION = 'Clothing'
),
           (
               SELECT
                   SELLER_ID
               FROM
                   SELLERS
               WHERE
                   STORE_NAME = 'Bella''s Hats'
           ),
           'Hats on Everything, Ltd.',
           'Big Floppy Hat',
           'This hat flops, in a big way!',
           19.99,
           'Apparel and Accessories',
           52,
           SYSDATE );


-- ------------------- --
-- Start Order Inserts --
-- ------------------- --

INSERT INTO ORDERS (
    CUSTOMER_ID,
    ORDER_DATE,
    ORDER_STATUS,
    ESTIMATED_DELIVERY_DATE
) VALUES ( 10,
           SYSDATE,
           'Pending',
           TO_DATE('2025-11-14 16:20:00', 'YYYY-MM-DD HH24:MI:SS') );

INSERT INTO ORDERS (
    CUSTOMER_ID,
    ORDER_DATE,
    ORDER_STATUS,
    ESTIMATED_DELIVERY_DATE
) VALUES ( 21,
           SYSDATE,
           'Pending',
           TO_DATE('2025-11-02', 'YYYY-MM-DD') );

INSERT INTO ORDERS (
    CUSTOMER_ID,
    ORDER_DATE,
    ORDER_STATUS,
    ESTIMATED_DELIVERY_DATE
) VALUES ( 22,
           SYSDATE,
           'Pending',
           TO_DATE('2025-11-02', 'YYYY-MM-DD') );

INSERT INTO ORDERS (
    CUSTOMER_ID,
    ORDER_DATE,
    ORDER_STATUS,
    ESTIMATED_DELIVERY_DATE
) VALUES ( 23,
           TO_DATE('1996-12-25', 'YYYY-MM-DD'),
           'Cancelled',
           TO_DATE('1997-08-05', 'YYYY-MM-DD') );

INSERT INTO ORDERS (
    CUSTOMER_ID,
    ORDER_DATE,
    ORDER_STATUS,
    ESTIMATED_DELIVERY_DATE
) VALUES ( 24,
           TO_DATE('2025-06-04', 'YYYY-MM-DD'),
           'Delivered',
           TO_DATE('2025-06-18', 'YYYY-MM-DD') );

INSERT INTO ORDERS (
    CUSTOMER_ID,
    ORDER_DATE,
    ORDER_STATUS,
    ESTIMATED_DELIVERY_DATE
) VALUES ( 24,
           TO_DATE('2025-10-25', 'YYYY-MM-DD'),
           'Shipped',
           TO_DATE('2025-11-02', 'YYYY-MM-DD') );

INSERT INTO ORDERS (
    CUSTOMER_ID,
    ORDER_DATE,
    ORDER_STATUS,
    ESTIMATED_DELIVERY_DATE
) VALUES ( 11,
           TO_DATE('2025-10-10', 'YYYY-MM-DD'),
           'Returned',
           TO_DATE('2025-10-22', 'YYYY-MM-DD') );


-- --------------------------- --
-- Start Order Product Inserts --
-- --------------------------- --

INSERT INTO ORDER_PRODUCT (
    ORDER_ID,
    PRODUCT_ID,
    QTY
) VALUES ( 41,
           21,
           1 );

INSERT INTO ORDER_PRODUCT (
    ORDER_ID,
    PRODUCT_ID,
    QTY
) VALUES ( 42,
           23,
           3 );

INSERT INTO ORDER_PRODUCT (
    ORDER_ID,
    PRODUCT_ID,
    QTY
) VALUES ( 42,
           24,
           1 );

INSERT INTO ORDER_PRODUCT (
    ORDER_ID,
    PRODUCT_ID,
    QTY
) VALUES ( 43,
           25,
           1 );

INSERT INTO ORDER_PRODUCT (
    ORDER_ID,
    PRODUCT_ID,
    QTY
) VALUES ( 44,
           22,
           3 );

INSERT INTO ORDER_PRODUCT (
    ORDER_ID,
    PRODUCT_ID,
    QTY
) VALUES ( 45,
           21,
           2 );

INSERT INTO ORDER_PRODUCT (
    ORDER_ID,
    PRODUCT_ID,
    QTY
) VALUES ( 46,
           25,
           2 );

INSERT INTO ORDER_PRODUCT (
    ORDER_ID,
    PRODUCT_ID,
    QTY
) VALUES ( 46,
           21,
           2 );

INSERT INTO ORDER_PRODUCT (
    ORDER_ID,
    PRODUCT_ID,
    QTY
) VALUES ( 46,
           23,
           7 );

-- ------------------------- --
-- Start Transaction Inserts --
-- ------------------------- --


SELECT * FROM ORDERS WHERE CUSTOMER_ID = 24;

-- Select all the product order quantities and the product prices associated with the given order id
-- multiple the quantity with the price and sum them
SELECT sum(op.qty*p.price) as total from order_product op join products p on op.product_id = p.PRODUCT_ID where op.order_id = 46;
select * from products where product_id in (select product_id from ORDER_PRODUCT where order_id = 46);


/* INSERT INTO TRANSACTIONS ( ORDER_ID, CUSTOMER_ID, PAYMENT_DATE, AMOUNT, PAYMENT_METHOD, PAYMENT_STATUS ) VALUES (
    45,
    24,
    SYSDATE,
    (SELECT sum(op.qty*p.price) as total from order_product op join products p on op.product_id = p.PRODUCT_ID where op.order_id = 45),
    
); */

CREATE TABLE INVENTORY (
    INVENTORY_ID INT GENERATED ALWAYS AS IDENTITY,
    PRODUCT_ID REFERENCES PRODUCTS(PRODUCT_ID) NOT NULL,
    WAREHOUSE_ID REFERENCES WAREHOUSE(WAREHOUSE_ID) NOT NULL,
    QTY INT NOT NULL
);
