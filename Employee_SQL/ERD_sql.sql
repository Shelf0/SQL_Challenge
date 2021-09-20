# Modify this code to update the DB schema diagram.
# To reset the sample schema, replace everything with
# two dots ('..' - without quotes).

Customer
-
CustomerID PK int
Name string INDEX
Address1 string
Address2 NULL string
Address3 NULL string

Order
-
OrderID PK int
CustomerID int FK >- Customer.CustomerID
TotalAmount money
OrderStatusID int FK >- os.OrderStatusID

OrderLine as ol
----
OrderLineID PK int
OrderID int FK >- Order.OrderID
ProductID int FK >- p.ProductID
Quantity int

# Table documentation comment 1 (try the PDF/RTF export)
Product as p # Table documentation comment 2
------------
ProductID PK int
# Field documentation comment 1
# Field documentation comment 2 
Name varchar(200) UNIQUE # Field documentation comment 3
Price money

OrderStatus as os
----
OrderStatusID PK int
Name UNIQUE string