DROP USER IF EXISTS Inventory;
CREATE USER 'Inventory' IDENTIFIED BY 'inventoryPassword';
GRANT ALL PRIVILEGES ON products.* TO 'Inventory';
GRANT ALL PRIVILEGES ON productlines.* TO 'Inventory';
CREATE USER 'Bookkeeping' IDENTIFIED BY 'bookkeepingPassword';
GRANT SELECT, UPDATE, DELETE ON orders.* TO 'Bookkeeping';
GRANT SELECT, UPDATE, DELETE ON orderdetails.* TO 'Bookkeeping';
GRANT SELECT ON customers.* TO 'Bookkeeping';
GRANT SELECT ON payments.* TO 'Bookkeeping';
CREATE USER 'HR' IDENTIFIED BY 'hrPassword';
GRANT ALL PRIVILEGES ON offices.* TO 'HR';
GRANT ALL PRIVILEgES ON employees.* TO 'HR';
CREATE USER 'Sales' IDENTIFIED BY 'salesPassword';
GRANT SELECT, INSERT ON orders.* TO 'Sales';
GRANT SELECT, INSERT ON orderdetails.* TO 'Sales';
CREATE USER 'IT' IDENTIFIED BY 'itPassword';
GRANT ALL PRIVILEGES ON * TO 'IT';
FLUSH PRIVILEGES;

