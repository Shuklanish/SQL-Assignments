#1
SELECT 
    e.fname, e.title, d.name
FROM
    employee AS e
        JOIN
    department AS d ON e.dept_id = d.dept_id;
    
#2
SELECT 
    pt.name AS product_type_name, p.name AS product_name
FROM
    product p
        LEFT JOIN
    product_type pt ON p.product_type_cd = pt.product_type_cd;
    
#3
SELECT DISTINCT
    CONCAT(e.fname, ' ', e.lname) AS Employee_name,
    CONCAT(e1.fname, ' ', e1.lname) AS Superior_name
FROM
    employee e
        INNER JOIN
    employee e1 ON e.superior_emp_id = e1.emp_id;
    
#4
SELECT 
    fname, lname
FROM
    employee e
WHERE
    e.superior_emp_id = (SELECT 
            emp_id
        FROM
            employee e1
        WHERE
            fname = 'Susan' AND lname = 'Hawthorne');
     
#5
SELECT 
    fname, lname
FROM
    employee
WHERE
    superior_emp_id IN (SELECT 
            emp_id
        FROM
            employee e
                JOIN
            department d ON e.dept_id = d.dept_id
        WHERE
            d.dept_id = 1);
