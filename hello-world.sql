SELECT * FROM 
(VALUES 
  (1, 'John', 'Doe', DATE '2023-01-01'), 
  (2, 'Jane', 'Doe', DATE '2024-01-01')
) as i(id, first_name, last_name, birthday)
WHERE first_name like CONCAT('%',:name,'%') OR :name IS NULL;