USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
   IN item_ID INT
)
BEGIN
    SELECT Products.Name FROM Products
    JOIN Products ProductInventory on ProductInventory.ProductID = item_ID;
END
DELIMITER ;

