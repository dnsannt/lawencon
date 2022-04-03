 --QUERY (40 Points)--

 1. SELECT category.id, category.category_name, product.product_name AS parent_name 
    FROM product
    INNER JOIN category 
    ON product.category_id=category.id;
 
 2.   ==BERDASARKAN UMUR 30-40 tahun==
      SELECT customer_code, 
	          customer_name, 
             address, 
             TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) AS Age, 
      CASE 
          WHEN TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) <= 40 THEN '30-40 tahun' 
          WHEN TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) IS NULL THEN '(NULL)' END as KETERANGAN 
      FROM customer GROUP BY Age;

 3. SELECT so.so_no, customer.customer_code, customer.customer_name AS customer_id, so.trans_date, so.payment,
		 customer.address, customer.birth_date
    FROM so 
    INNER JOIN customer 
    ON so.customer_id=customer.id;

 4. SELECT product.id, product.product_code, product.product_name, product.price, category.category_name AS kategori 
    FROM product
    INNER JOIN category 
    ON product.category_id=category.id;

 5. SELECT so.so_no, customer.customer_name, so.trans_date
    FROM so 
    INNER JOIN customer ON so.customer_id=customer.id;
 
 6. SELECT product.product_code, product.product_name, SUM(so_detail.price)
    FROM product
    INNER JOIN so_detail ON product.id=so_detail.product_id
    GROUP BY so_detail.product_id;
 

