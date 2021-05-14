USE adventuresworks;

# Question 1

SELECT c.CustomerID,c.AccountNumber,c.CustomerType,a.City,a.PostalCode,
FROM customer c 
JOIN customeraddress ca ON c.CustomerID = ca.CustomerID.   #usingCustomer ID
JOIN address a ON ca.AddressID = a.AddressID;

# Question 2 

SELECT p.ProductID, p.Color, p.Name
FROM product p
ORDER BY SellStartDate DESC
LIMIT 20;


# Question 3

SELECT COUNT (i.ProductID), i.Shelf, p.SubcategoryID
FROM productinventory i
JOIN product p on i.ProductID = p.ProductID
WHERE i.ModifiedDate = '1998-05-02 00:00:00'
GROUP BY Shelf, p.SubcategoryID;

# Question 4 

SELECT v.VendorID, v.Name, EmailAddress
FROM vendor v 
JOIN vendorcontact vc ON v.VendorID = vc.VendorID
JOIN contact c ON vc.ContactID = c.ContactID;
WHERE v.Name = 'G & K Bicycle Corp.';

# Question 5 

# Question 6

# Question 7

SELECT distinct(count(TransactionID)), DATE_FORMAT(TransactionDate,'%Y%m')
FROM transactionhistory
GROUP BY DATE_FORMAT(TransactionDate,'%Y%m')



SELECT distinct(count(TransactionID)), DATE_FORMAT(TransactionDate,'%Y%m')
FROM transactionhistory
GROUP BY DATE_FORMAT(TransactionDate,'%Y%m')


SELECT p.ProductID FROM product p 
JOIN productproductphoto ph USING(ProductID) 
WHERE ph.ProductPhotoID = '1';