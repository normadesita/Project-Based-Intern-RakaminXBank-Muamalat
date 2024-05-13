create table Sejahtera_Bersama.master_table as
SELECT 
ord.Date as order_date,
cat.CategoryName as category_name,
produk.ProdName as product_name,
produk.Price as product_price,
ord.Quantity as order_qty,
produk.Price * ord.Quantity as total_sales,
cust.CustomerEmail as cust_email,
cust.CustomerCity as cust_city,
from Sejahtera_Bersama.Orders as ord
left join
Sejahtera_Bersama.Customers as cust on ord.CustomerID = cust.CustomerID
left join
Sejahtera_Bersama.Products as produk on ord.ProdNumber = produk.ProdNumber
left join
Sejahtera_Bersama.ProductCategory as cat on cat.CategoryID = produk.Category
order by ord.Date asc