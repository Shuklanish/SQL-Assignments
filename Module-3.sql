#1
SELECT 
    COUNT(*)
FROM
    account;

#2
SELECT 
    *
FROM
    account
LIMIT 2;

#3
SELECT 
    *
FROM
    account
LIMIT 2 OFFSET 2;

#4
SELECT 
    *,
    YEAR(birth_date),
    MONTH(birth_date),
    DAY(birth_date),
    DAYOFWEEK(birth_date)
FROM
    individual;
    
#5
SELECT 
    SUBSTRING('Please find the substring in this string',
        17,
        9);

#6
SELECT CEILING(ABS(- 25.76823) / 100) * 100;

#7
SELECT 
    DATE_ADD(CURRENT_DATE(),
        INTERVAL 30 DAY);

#8
SELECT 
    LEFT(fname, 3), RIGHT(lname, 3)
FROM
    individual;
    
#9
SELECT 
    UPPER(fname)
FROM
    individual
WHERE
    LENGTH(fname) = 5;
    
#10
SELECT 
    MAX(avail_balance), AVG(avail_balance)
FROM
    account
WHERE
    cust_id = 1;
