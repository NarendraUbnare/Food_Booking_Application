CREATE DATABASE FoodBookingDB;
USE FoodBookingDB;

-- Restaurants
CREATE TABLE Restaurants (
    RestaurantID INT PRIMARY KEY,
    Name VARCHAR(100),
    City VARCHAR(50),
    CuisineType VARCHAR(50),
    Rating DECIMAL(2,1),
    AverageCostForTwo DECIMAL(10,2)
);

-- Customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Phone VARCHAR(20),
    City VARCHAR(50),
    JoinDate DATE
);

-- Orders
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    RestaurantID INT,
    OrderDate DATE,
    OrderAmount DECIMAL(10,2),
    OrderStatus VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
);

-- Reviews
CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY,
    CustomerID INT,
    RestaurantID INT,
    Rating DECIMAL(2,1),
    Comment TEXT,
    ReviewDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
);

-- Payments
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentMethod VARCHAR(20),
    Amount DECIMAL(10,2),
    PaymentDate DATE,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Restaurants VALUES
(1,'Tandoori Nights','Delhi','Indian',4.6,800),
(2,'Pizza Palace','Mumbai','Italian',4.4,1200),
(3,'Dragon Express','Delhi','Chinese',4.3,600),
(4,'Bombay Biryani','Mumbai','Indian',4.7,1000),
(5,'Burger Hub','Bangalore','American',4.2,700),
(6,'Pasta Point','Mumbai','Italian',4.5,900),
(7,'Curry House','Delhi','Indian',4.1,500),
(8,'Sushi World','Chennai','Japanese',4.8,1500),
(9,'Grill & Chill','Kolkata','BBQ',4.4,1100),
(10,'Healthy Bowl','Pune','Healthy',4.3,750),
(11,'Royal Thali','Jaipur','Indian',4.6,850),
(12,'Spice Garden','Hyderabad','Indian',4.7,950),
(13,'Urban Tandoor','Delhi','Indian',4.5,1000),
(14,'Veggie Delight','Mumbai','Vegan',4.2,650),
(15,'Steak House','Goa','American',4.6,2000),
(16,'Noodle Hut','Delhi','Chinese',4.1,550),
(17,'Chaat Bazaar','Lucknow','Street Food',4.3,300),
(18,'Seafood Shack','Goa','Seafood',4.5,1800),
(19,'Dessert Den','Bangalore','Desserts',4.7,400),
(20,'Cafe Latte','Delhi','Cafe',4.2,600);

INSERT INTO Customers VALUES
(1,'John','Doe','9990000001','Delhi','2023-01-05'),
(2,'Alice','Smith','9990000002','Mumbai','2023-01-10'),
(3,'Rahul','Sharma','9990000003','Delhi','2023-02-15'),
(4,'Sneha','Patel','9990000004','Bangalore','2023-02-20'),
(5,'David','Brown','9990000005','Chennai','2023-03-12'),
(6,'Neha','Singh','9990000006','Mumbai','2023-03-25'),
(7,'Arjun','Reddy','9990000007','Hyderabad','2023-04-02'),
(8,'Emma','Wilson','9990000008','Kolkata','2023-04-15'),
(9,'Karan','Mehta','9990000009','Pune','2023-05-01'),
(10,'Sophia','Johnson','9990000010','Goa','2023-05-20'),
(11,'Ravi','Kumar','9990000011','Lucknow','2023-06-10'),
(12,'Priya','Agarwal','9990000012','Delhi','2023-06-22'),
(13,'Amit','Verma','9990000013','Jaipur','2023-07-05'),
(14,'Olivia','Miller','9990000014','Mumbai','2023-07-18'),
(15,'Aditya','Gupta','9990000015','Delhi','2023-08-10'),
(16,'Mia','Davis','9990000016','Chennai','2023-08-25'),
(17,'Rohan','Nair','9990000017','Bangalore','2023-09-05'),
(18,'Ananya','Das','9990000018','Kolkata','2023-09-20'),
(19,'Liam','Taylor','9990000019','Goa','2023-10-12'),
(20,'Isha','Kapoor','9990000020','Pune','2023-10-28');

INSERT INTO Orders VALUES
(1,1,1,'2023-06-15',800,'Delivered'),
(2,2,2,'2023-06-16',1200,'Delivered'),
(3,3,3,'2023-06-17',600,'Cancelled'),
(4,4,4,'2023-06-18',1000,'Delivered'),
(5,5,5,'2023-06-19',700,'Pending'),
(6,6,6,'2023-06-20',900,'Delivered'),
(7,7,7,'2023-06-21',500,'Delivered'),
(8,8,8,'2023-06-22',1500,'Delivered'),
(9,9,9,'2023-06-23',1100,'Cancelled'),
(10,10,10,'2023-06-24',750,'Delivered'),
(11,11,11,'2023-06-25',850,'Pending'),
(12,12,12,'2023-06-26',950,'Delivered'),
(13,13,13,'2023-06-27',1000,'Delivered'),
(14,14,14,'2023-06-28',650,'Delivered'),
(15,15,15,'2023-06-29',2000,'Delivered'),
(16,16,16,'2023-06-30',550,'Cancelled'),
(17,17,17,'2023-07-01',300,'Delivered'),
(18,18,18,'2023-07-02',1800,'Delivered'),
(19,19,19,'2023-07-03',400,'Delivered'),
(20,20,20,'2023-07-04',600,'Cancelled');

INSERT INTO Reviews VALUES
(1,1,1,5,'Great food!','2023-06-16'),
(2,2,2,4,'Good pizza','2023-06-17'),
(3,3,3,3,'Average','2023-06-18'),
(4,4,4,5,'Loved it!','2023-06-19'),
(5,5,5,4,'Nice burgers','2023-06-20'),
(6,6,6,5,'Best pasta','2023-06-21'),
(7,7,7,3,'Okay','2023-06-22'),
(8,8,8,5,'Amazing sushi','2023-06-23'),
(9,9,9,4,'Good BBQ','2023-06-24'),
(10,10,10,5,'Very healthy','2023-06-25'),
(11,11,11,4,'Good taste','2023-06-26'),
(12,12,12,5,'Spicy and tasty','2023-06-27'),
(13,13,13,5,'Excellent','2023-06-28'),
(14,14,14,3,'Decent','2023-06-29'),
(15,15,15,5,'Loved the steak','2023-06-30'),
(16,16,16,4,'Good noodles','2023-07-01'),
(17,17,17,4,'Nice street food','2023-07-02'),
(18,18,18,5,'Best seafood','2023-07-03'),
(19,19,19,5,'Great desserts','2023-07-04'),
(20,20,20,4,'Nice coffee','2023-07-05');

INSERT INTO Payments VALUES
(1,1,'Card',800,'2023-06-15'),
(2,2,'Wallet',1200,'2023-06-16'),
(3,3,'Cash',600,'2023-06-17'),
(4,4,'Card',1000,'2023-06-18'),
(5,5,'Wallet',700,'2023-06-19'),
(6,6,'Cash',900,'2023-06-20'),
(7,7,'Card',500,'2023-06-21'),
(8,8,'Wallet',1500,'2023-06-22'),
(9,9,'Cash',1100,'2023-06-23'),
(10,10,'Card',750,'2023-06-24'),
(11,11,'Wallet',850,'2023-06-25'),
(12,12,'Cash',950,'2023-06-26'),
(13,13,'Card',1000,'2023-06-27'),
(14,14,'Wallet',650,'2023-06-28'),
(15,15,'Card',2000,'2023-06-29'),
(16,16,'Cash',550,'2023-06-30'),
(17,17,'Card',300,'2023-07-01'),
(18,18,'Wallet',1800,'2023-07-02'),
(19,19,'Cash',400,'2023-07-03'),
(20,20,'Card',600,'2023-07-04');


-- Question 1. Retrieve the names and locations of restaurants with a rating of 4.5 or higher. 
SELECT Name, City FROM Restaurants WHERE Rating >= 4.5;

-- Question 2. Find the total number of orders placed by each customer.
SELECT c.FirstName, c.LastName, COUNT(o.OrderID) AS TotalOrders
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID;

-- Question 3. List all restaurants offering "Italian" cuisine in "Mumbai".
SELECT Name FROM Restaurants WHERE CuisineType='Italian' AND City='Mumbai';

-- Question 4. Calculate the total revenue generated by each restaurant from completed orders. 
SELECT r.Name, SUM(o.OrderAmount) AS Revenue
FROM Restaurants r
JOIN Orders o ON r.RestaurantID = o.RestaurantID
WHERE o.OrderStatus='Delivered'
GROUP BY r.RestaurantID;

-- Question 5. Retrieve the most recent order placed by each customer. 
SELECT c.FirstName, c.LastName, MAX(o.OrderDate) AS RecentOrder
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID;

-- Question 6. List customers who have not placed any orders yet.
SELECT c.FirstName, c.LastName
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

-- Question 7. Identify the most reviewed restaurants. 
SELECT r.Name, COUNT(rv.ReviewID) AS ReviewCount
FROM Restaurants r
JOIN Reviews rv ON r.RestaurantID = rv.RestaurantID
GROUP BY r.RestaurantID
ORDER BY ReviewCount DESC;

-- Question 8. Find the most preferred payment method. 
SELECT PaymentMethod, COUNT(*) AS UsageCount
FROM Payments
GROUP BY PaymentMethod
ORDER BY UsageCount DESC LIMIT 1;

-- Question 9. List the top 5 restaurants by total revenue.
SELECT r.Name, SUM(o.OrderAmount) AS Revenue
FROM Restaurants r
JOIN Orders o ON r.RestaurantID = o.RestaurantID
WHERE o.OrderStatus='Delivered'
GROUP BY r.RestaurantID
ORDER BY Revenue DESC LIMIT 5;

-- Question10. Show the details of all cancelled orders along with the customer's and restaurant's names. 
SELECT o.OrderID, c.FirstName, c.LastName, r.Name AS Restaurant, o.OrderAmount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Restaurants r ON o.RestaurantID = r.RestaurantID
WHERE o.OrderStatus='Cancelled';

