#1
SELECT 
    cust_id, COUNT(*) AS no_of_account
FROM
    account
GROUP BY cust_id;

#2
SELECT 
    cust_id, COUNT(*) AS no_of_account
FROM
    account
GROUP BY cust_id
HAVING no_of_account > 2;

#3
SELECT 
    fname, birth_date
FROM
    individual
ORDER BY birth_date DESC;

#4
SELECT 
    YEAR(open_date) AS open_year,
    AVG(avail_balance) AS avg_balance
FROM
    account
GROUP BY open_year
ORDER BY open_year;

#5
SELECT 
    product_cd, MAX(pending_balance) AS max_pending_bal
FROM
    account
GROUP BY product_cd
HAVING product_cd IN ('CHK' , 'SAV', 'CD');