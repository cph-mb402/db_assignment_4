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

# Successful Queries
INSERT INTO `classicmodels`.`employees` (`employeeNumber`, `lastName`, `firstName`, `extension`, `email`, `officeCode`, `reportsTo`, `jobTitle`) VALUES ('1111', 'Vlad', 'Salesman', 'x6666', 'vlad@classicmodelcars.com', '3', '1143', 'Sales Rep')
INSERT INTO `classicmodels`.`employees` (`employeeNumber`, `lastName`, `firstName`, `extension`, `email`, `officeCode`, `reportsTo`, `jobTitle`) VALUES ('1000', 'Vlad', 'Sales Manager', 'x200', 'vladd@classicmodelcars.com', '6', '1056', 'Sales Manager (EU)')

INSERT INTO `classicmodels`.`products` (`productCode`, `productName`, `productLine`, `productScale`, `productVendor`, `productDescription`, `quantityInStock`, `buyPrice`, `MSRP`) VALUES ('S72_4521', 'JET PLN', 'Planes', '1:72', 'Jet Planes Extraordinaire', 'Best plane ever', '1', '100.11', '120.21')

INSERT INTO `classicmodels`.`orders` (`orderNumber`, `orderDate`, `requiredDate`, `status`, `comments`, `customerNumber`) VALUES ('10426', '2005-06-01', '2005-06-08', 'In Progress', 'Customer wants product manufactured out of be solid gold', '119')

# Failed Query
INSERT INTO `classicmodels`.`products` (`productCode`, `productName`, `productLine`, `productScale`, `productVendor`, `productDescription`, `quantityInStock`, `buyPrice`, `MSRP`) VALUES ('S72_6774', 'JET BOAT', 'Ships', '1:72', 'Le Boats', 'Best Boat ever', '1', '200.20', '250.52')
