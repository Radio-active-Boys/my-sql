SHOW DATABASES;

USE company;

SHOW TABLES;


SELECT * FROM Employee;
SELECT * FROM Customer;
SELECT * FROM EmployeeManager;
SELECT * FROM Orders;
SELECT * FROM Product;
SELECT * FROM  Sales;
-- 1. Create a view that shows employee names and their managers' names. 
SELECT e.employee_name as Employee_name FROM Employee AS e LEFT JOIN EmployeeManager AS em ON em.manager_id = e.employee_id WHERE em.employee_id = e.employee_id;
w2
SELECT 
    e.employee_name AS Employee_name,
    m.employee_name AS Manager_name
FROM 
    Employee AS e
LEFT JOIN 
    EmployeeManager AS em ON e.employee_id = em.employee_id
LEFT JOIN 
    Employee AS m ON em.manager_id = m.employee_id;


-- 2. Create a view showing the total sales made by each employee. 
 

-- 3. Create a view displaying the list of customers and the total amount of their orders. 
 
-- 4. Create a view showing product names and their sales total. 
 
-- 5. Create a view that shows the sales made by employees for each product. 
 
-- 6. Create a view showing employees who do not have a manager. 
 
-- 7. Create a view displaying orders made by customers along with the products they ordered. 
 
-- 8. Create a view that shows the total amount of sales per product. 
 
-- 9. Create a view that displays all employees with more than one manager. 
 
-- 10. Create a view showing the orders where the amount is greater than the average order amount. 
 
-- 11. Create a view displaying the names of customers who have not made any orders. 
 
-- 12. Create a view showing the top 3 products with the highest sales amounts. 
 
-- 13. Create a view showing all employees who haven't made any sales. 
 
-- 14. Create a view that shows the highest sale made by each employee. 
 
-- 15. Create a view showing customers and their most expensive order. 