SELECT 
  c.CustomerEmail AS cust_email,
  c.CustomerCity AS cust_city,
  o.Date AS order_date,
  o.Quantity AS order_qty,
  p.ProdName AS product_name,
  p.Price AS product_price,
  pc.CategoryName AS category_name,
  (o.Quantity * p.Price) AS total_sales
FROM `bank-muamalat-bia.muamalat.orders` o
JOIN `bank-muamalat-bia.muamalat.customers` c 
  ON o.CustomerID = c.CustomerID
JOIN `bank-muamalat-bia.muamalat.products` p 
  ON o.ProdNumber = p.ProdNumber
JOIN `bank-muamalat-bia.muamalat.product_category` pc 
  ON p.Category = pc.CategoryID
ORDER BY o.Date ASC;
