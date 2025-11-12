/** 
 * This is going to house all of our insert statements.
 * 
 * Note that there are a couple utility functions defined here
 * that will make your life easier down the road. You can
 * obtain USER_ID, CUSTOMER_ID, or SELLER_ID by querying
 * based on full name. If we want to change this later,
 * I would recommend using email instead, because
 * uniqueness is enforced on those columns.
 * 
 * This makes it a bit easier to query specific sellers,
 * customers, or users. 
 */

------------------------------------------------------
---------------- Function Definitions ----------------
------------------------------------------------------

CREATE OR REPLACE FUNCTION GET_USER_ID(P_FIRST_NAME VARCHAR2, P_LAST_NAME VARCHAR2)
RETURN NUMBER IS
    V_USER_ID USERS.USER_ID%TYPE;
BEGIN
    SELECT USER_ID INTO V_USER_ID
    FROM USERS
    WHERE EMAIL IN ((LOWER(P_FIRST_NAME) || '.' || LOWER(P_LAST_NAME) || '@' || 'example.com' ),(LOWER(P_LAST_NAME) || '.' || LOWER(P_FIRST_NAME) || '@' || 'example.com' ));
    RETURN V_USER_ID;
END;
/

CREATE OR REPLACE FUNCTION GET_SELLER_ID(P_FIRST_NAME VARCHAR2, P_LAST_NAME VARCHAR2)
RETURN NUMBER IS
    V_SELLER_ID SELLERS.SELLER_ID%TYPE;
BEGIN
    SELECT SELLER_ID INTO V_SELLER_ID
    FROM SELLERS
    WHERE USER_ID = get_user_id(P_FIRST_NAME, P_LAST_NAME);
    RETURN V_SELLER_ID;
END;
/

CREATE OR REPLACE FUNCTION GET_CUSTOMER_ID(P_FIRST_NAME VARCHAR2, P_LAST_NAME VARCHAR2)
RETURN NUMBER IS
    V_CUSTOMER_ID CUSTOMERS.CUSTOMER_ID%TYPE;
BEGIN
    SELECT CUSTOMER_ID INTO V_CUSTOMER_ID
    FROM CUSTOMERS
    WHERE USER_ID = GET_USER_ID(P_FIRST_NAME, P_LAST_NAME);
    RETURN V_CUSTOMER_ID;
END;
/

----------------------------------------------------
------------------- Insert Users -------------------
----------------------------------------------------
INSERT INTO
    USERS (
        FIRST_NAME,
        LAST_NAME,
        EMAIL,
        PHONE
    )
VALUES
    (
        'Ella',
        'Garcia',
        'ella.garcia@example.com',
        '5556789010'
    );

INSERT INTO
    USERS (
        FIRST_NAME,
        LAST_NAME,
        EMAIL,
        PHONE
    )
VALUES
    (
        'Liam',
        'Smith',
        'liam.smith@example.com',
        '5551234567'
    );

INSERT INTO
    USERS (
        FIRST_NAME,
        LAST_NAME,
        EMAIL,
        PHONE
    )
VALUES
    (
        'Ava',
        'Johnson',
        'ava.johnson@example.com',
        '5559876543'
    );

INSERT INTO
    USERS (
        FIRST_NAME,
        LAST_NAME,
        EMAIL,
        PHONE
    )
VALUES
    (
        'Noah',
        'Brown',
        'noah.brown@example.com',
        '5555432198'
    );

INSERT INTO
    USERS (
        FIRST_NAME,
        LAST_NAME,
        EMAIL,
        PHONE
    )
VALUES
    (
        'Sophia',
        'Martinez',
        'sophia.martinez@example.com',
        '5556543210'
    );

INSERT INTO
    USERS (
        FIRST_NAME,
        LAST_NAME,
        EMAIL,
        PHONE
    )
VALUES
    (
        'Gary',
        'Shanks',
        'gary.shanks@example.com',
        '5556107584'
    );

INSERT INTO
    USERS (
        FIRST_NAME,
        LAST_NAME,
        EMAIL,
        PHONE
    )
VALUES
    (
        'Zheng',
        'Lihua',
        'lihua.zheng@example.com',
        '5557435728'
    );

INSERT INTO
    USERS (
        FIRST_NAME,
        LAST_NAME,
        EMAIL,
        PHONE
    )
VALUES
    (
        'Giancarlo',
        'Pietragallo',
        'giancarlo.pietragallo@example.com',
        '5554732202'
    );

INSERT INTO
    USERS (
        FIRST_NAME,
        LAST_NAME,
        EMAIL,
        PHONE
    )
VALUES
    (
        'Olumuyiwa',
        'Unigwe',
        'olumuyiwa.unigwe@example.com',
        '5558319367'
    );

--------------------------------------------------------
------------------- Insert Customers -------------------
--------------------------------------------------------
INSERT INTO
    CUSTOMERS (
        USER_ID,
        SHIPPING_STREET,
        SHIPPING_CITY,
        SHIPPING_STATE,
        SHIPPING_ZIP,
        BILLING_STREET,
        BILLING_CITY,
        BILLING_STATE,
        BILLING_ZIP
    )
VALUES
    (
        get_user_id('Ella','Garcia'),
        '131 N Kent St',
        'Winchester',
        'VA',
        '22601',
        '131 N Kent St',
        'Winchester',
        'VA',
        '22601'
    );

INSERT INTO
    CUSTOMERS (
        USER_ID,
        SHIPPING_STREET,
        SHIPPING_CITY,
        SHIPPING_STATE,
        SHIPPING_ZIP,
        BILLING_STREET,
        BILLING_CITY,
        BILLING_STATE,
        BILLING_ZIP
    )
VALUES
    (
        get_user_id('Liam','Smith'),
        '720 Viscose Ave',
        'Front Royal',
        'VA',
        '22630',
        '720 Viscose Ave',
        'Winchester',
        'VA',
        '22630'
    );

INSERT INTO
    CUSTOMERS (
        USER_ID,
        SHIPPING_STREET,
        SHIPPING_CITY,
        SHIPPING_STATE,
        SHIPPING_ZIP,
        BILLING_STREET,
        BILLING_CITY,
        BILLING_STATE,
        BILLING_ZIP
    )
VALUES
    (
        get_user_id('Ava','Johnson'),
        '608 Millwood Ave',
        'Winchester',
        'VA',
        '22601',
        '608 Millwood Ave',
        'Winchester',
        'VA',
        '22601'
    );

INSERT INTO
    CUSTOMERS (
        USER_ID,
        SHIPPING_STREET,
        SHIPPING_CITY,
        SHIPPING_STATE,
        SHIPPING_ZIP,
        BILLING_STREET,
        BILLING_CITY,
        BILLING_STATE,
        BILLING_ZIP
    )
VALUES
    (
        get_user_id('Noah','Brown'),
        '416 Millwood Ave',
        'Winchester',
        'VA',
        '22601',
        '416 Millwood Ave',
        'Winchester',
        'VA',
        '22601'
    );

INSERT INTO
    CUSTOMERS (
        USER_ID,
        SHIPPING_STREET,
        SHIPPING_CITY,
        SHIPPING_STATE,
        SHIPPING_ZIP,
        BILLING_STREET,
        BILLING_CITY,
        BILLING_STATE,
        BILLING_ZIP
    )
VALUES
    (
        get_user_id('Sophia','Martinez'),
        '5 Parkview Ave',
        'Winchester',
        'VA',
        '22601',
        '5 Parkview Ave',
        'Winchester',
        'VA',
        '22601'
    );

INSERT INTO
    CUSTOMERS (
        USER_ID,
        SHIPPING_STREET,
        SHIPPING_CITY,
        SHIPPING_STATE,
        SHIPPING_ZIP,
        BILLING_STREET,
        BILLING_CITY,
        BILLING_STATE,
        BILLING_ZIP
    )
VALUES
    (
        get_user_id('Gary','Shanks'),
        '235 Millwood Ave',
        'Winchester',
        'VA',
        '22601',
        '235 Millwood Ave',
        'Winchester',
        'VA',
        '22601'
    );

INSERT INTO
    CUSTOMERS (
        USER_ID,
        SHIPPING_STREET,
        SHIPPING_CITY,
        SHIPPING_STATE,
        SHIPPING_ZIP,
        BILLING_STREET,
        BILLING_CITY,
        BILLING_STATE,
        BILLING_ZIP
    )
VALUES
    (
        get_user_id('Zheng','Lihua'),
        '1015 Opequon Ave',
        'Winchester',
        'VA',
        '22601',
        '1015 Opequon Ave',
        'Winchester',
        'VA',
        '22601'
    );

INSERT INTO
    CUSTOMERS (
        USER_ID,
        SHIPPING_STREET,
        SHIPPING_CITY,
        SHIPPING_STATE,
        SHIPPING_ZIP,
        BILLING_STREET,
        BILLING_CITY,
        BILLING_STATE,
        BILLING_ZIP
    )
VALUES
    (
        get_user_id('Olumuyiwa','Unigwe'),
        '328 Shenandoah Ave',
        'Winchester',
        'VA',
        '22601',
        '328 Shenandoah Ave',
        'Winchester',
        'VA',
        '22601'
    );

--------------------------------------------------------
-------------------- Insert Sellers --------------------
--------------------------------------------------------
INSERT INTO
    SELLERS (USER_ID, STORE_NAME)
VALUES
    (get_user_id('Zheng','Lihua'), 'Shijiazhuang Donghua Jinlong Chemical Industry Co.');

INSERT INTO
    SELLERS (USER_ID, STORE_NAME)
VALUES
    (get_user_id('Gary','Shanks'), 'Shanks'' Think Tank');

INSERT INTO
    SELLERS (USER_ID, STORE_NAME)
VALUES
    (get_user_id('Sophia','Martinez'), 'Martinez Tax Consultants');

INSERT INTO
    SELLERS (USER_ID, STORE_NAME)
VALUES
    (get_user_id('Noah','Brown'), 'Clown ' || '' || ' Co.');

INSERT INTO
    SELLERS (USER_ID, STORE_NAME)
VALUES
    (get_user_id('Ava','Johnson'), 'Johnson ' || '&' || 'Johnson ' || '&' || 'Johnson ' || '&' || 'Johnson ' || '&' || ' Bancroft');

INSERT INTO
    WAREHOUSES (
        LOCATION,
        SHIPPING_STREET,
        SHIPPING_CITY,
        SHIPPING_STATE,
        SHIPPING_ZIP,
        BILLING_STREET,
        BILLING_CITY,
        BILLING_STATE,
        BILLING_ZIP
    )
VALUES
    (
        'Wilkes-Barre_PA_A',
        '600 New Commerce Blvd',
        'Wilkes-Barre',
        'PA',
        '18706',
        '600 New Commerce Blvd',
        'Wilkes-Barre',
        'PA',
        '18706'
    );

INSERT INTO
    WAREHOUSES (
        LOCATION,
        SHIPPING_STREET,
        SHIPPING_CITY,
        SHIPPING_STATE,
        SHIPPING_ZIP,
        BILLING_STREET,
        BILLING_CITY,
        BILLING_STATE,
        BILLING_ZIP
    )
VALUES
    (
        'Dover_DE_A',
        '600 Energy Ln',
        'Dover',
        'DE',
        '19901',
        '600 Energy Ln',
        'Dover',
        'DE',
        '19901'
    );

INSERT INTO
    WAREHOUSES (
        LOCATION,
        SHIPPING_STREET,
        SHIPPING_CITY,
        SHIPPING_STATE,
        SHIPPING_ZIP,
        BILLING_STREET,
        BILLING_CITY,
        BILLING_STATE,
        BILLING_ZIP
    )
VALUES
    (
        'Dover_DE_B',
        '4014 N Dupont Hwy',
        'Dover',
        'DE',
        '19901',
        '4014 N Dupont Hwy',
        'Dover',
        'DE',
        '19901'
    );

INSERT INTO
    WAREHOUSES (
        LOCATION,
        SHIPPING_STREET,
        SHIPPING_CITY,
        SHIPPING_STATE,
        SHIPPING_ZIP,
        BILLING_STREET,
        BILLING_CITY,
        BILLING_STATE,
        BILLING_ZIP
    )
VALUES
    (
        'Lexington_KY_A',
        '172 Trade St',
        'Lexington',
        'KY',
        '40511',
        '172 Trade St',
        'Lexington',
        'KY',
        '40511'
    );

INSERT INTO
    WAREHOUSES (
        LOCATION,
        SHIPPING_STREET,
        SHIPPING_CITY,
        SHIPPING_STATE,
        SHIPPING_ZIP,
        BILLING_STREET,
        BILLING_CITY,
        BILLING_STATE,
        BILLING_ZIP
    )
VALUES
    (
        'Lexington_KY_B',
        '1180 Newtown Pike',
        'Lexington',
        'KY',
        '40511',
        '1180 Newtown Pike',
        'Lexington',
        'KY',
        '40511'
    );

INSERT INTO
    WAREHOUSES (
        LOCATION,
        SHIPPING_STREET,
        SHIPPING_CITY,
        SHIPPING_STATE,
        SHIPPING_ZIP,
        BILLING_STREET,
        BILLING_CITY,
        BILLING_STATE,
        BILLING_ZIP
    )
VALUES
    (
        'Lexington_KY_C',
        '2447 Palumbo Dr',
        'Lexington',
        'KY',
        '40509',
        '2447 Palumbo Dr',
        'Lexington',
        'KY',
        '40509'
    );

INSERT INTO
    WAREHOUSES (
        LOCATION,
        SHIPPING_STREET,
        SHIPPING_CITY,
        SHIPPING_STATE,
        SHIPPING_ZIP,
        BILLING_STREET,
        BILLING_CITY,
        BILLING_STATE,
        BILLING_ZIP
    )
VALUES
    (
        'Salina_KS_A',
        '1850 E Water Well Rd',
        'Salina',
        'KS',
        '67401',
        '1850 E Water Well Rd',
        'Salina',
        'KS',
        '67401'
    );

INSERT INTO
    PRODUCTS (
        SELLER_ID,
        SUPPLIER_NAME,
        NAME,
        DESCRIPTION,
        PRICE,
        CATEGORY
    )
VALUES
    (
        get_seller_id('Zheng','Lihua'),
        'Donghua Jinlong Industrial Grade Distribution Supply',
        'Industrial Grade Glycine',
        'Used in pesticide production, water treatment, electronics industry.
 Package:
 25kg/ 500kg/ 750kg/ 900kg/bag
 25kg/drum/carton
 Cas no.: 56-40-6
 Product standard: HG/T2029-2004
 Origin: Shijiazhuang, Hebei, China',
        249.99,
        'Glycine'
    );

