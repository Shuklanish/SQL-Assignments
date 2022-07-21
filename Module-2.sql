#1 
SELECT 
    account_id, cust_id, avail_balance
FROM
    account
WHERE
    status = 'ACTIVE'
        AND avail_balance > 2500;
        
#2
SELECT 
    *
FROM
    account
WHERE
    open_date BETWEEN '2002-01-01' AND '2002-12-31';
    
#3
SELECT 
    account_id, avail_balance, pending_balance
FROM
    account
WHERE
    avail_balance <> pending_balance;
    
#4
SELECT 
    account_id, product_cd
FROM
    account
WHERE
    account_ID IN (1 , 10, 23, 27);
    
#5
SELECT 
    account_id, avail_balance
FROM
    account
WHERE 
	avail_balance BETWEEN 100 AND 200;