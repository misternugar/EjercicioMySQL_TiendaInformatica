-- 1. Lista el nombre de todos los productos que hay en la tabla producto.

SELECT 
    nombre
FROM
    producto;

-- 2. Lista los nombres y los precios de todos los productos de la tabla producto.

SELECT 
    nombre, precio
FROM
    producto;

-- 3. Lista todas las columnas de la tabla producto.

SELECT 
    *
FROM
    producto;

-- 4. Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).

SELECT 
    nombre, precio AS 'euros', precio * 1.04 AS 'dólares'
FROM
    producto;

-- 5. Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). 
-- Utiliza los siguientes alias para las columnas: nombre de producto, euros, dólares.

SELECT 
    nombre AS 'nombre de producto',
    precio AS 'euros',
    precio * 1.04 AS 'dólares'
FROM
    producto;

-- 6. Lista los nombres y los precios de todos los productos de la tabla producto, 
-- convirtiendo los nombres a mayúscula.

SELECT 
    UPPER(nombre) AS 'nombre', precio
FROM
    producto;

-- 7. Lista los nombres y los precios de todos los productos de la tabla producto, 
-- convirtiendo los nombres a minúscula.

SELECT 
    LOWER(nombre) AS 'nombre', precio
FROM
    producto;

-- 8. Lista el nombre de todos los fabricantes en una columna, 
-- y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.

SELECT 
    nombre, UPPER(SUBSTRING(nombre, 1, 2)) AS 'abreviatura'
FROM
    fabricante;

-- 9. Lista los nombres y los precios de todos los productos de la tabla producto, 
-- redondeando el valor del precio.

SELECT 
    nombre, ROUND(precio)
FROM
    producto;

-- 10. Lista los nombres y los precios de todos los productos de la tabla producto, 
-- truncando el valor del precio para mostrarlo sin ninguna cifra decimal.

SELECT 
    nombre, ROUND(precio)
FROM
    producto;

-- 11. Lista el código de los fabricantes que tienen productos en la tabla producto.

SELECT 
    código
FROM
    fabricante
WHERE
    EXISTS( SELECT 
            codigo
        FROM
            producto);

-- 12. Lista el código de los fabricantes que tienen productos en la tabla producto, eliminando los códigos que aparecen repetidos.
-- 13. Lista los nombres de los fabricantes ordenados de forma ascendente.
-- 14. Lista los nombres de los fabricantes ordenados de forma descendente.
-- 15. Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.
-- 16. Devuelve una lista con las 5 primeras filas de la tabla fabricante.
-- 17. Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla fabricante. La cuarta fila también se debe incluir en la respuesta.
-- 18. Lista el nombre y el precio del producto más barato. (Utilice solamente las cláusulas ORDER BY y LIMIT)
-- 19. Lista el nombre y el precio del producto más caro. (Utilice solamente las cláusulas ORDER BY y LIMIT)
-- 20. Lista el nombre de todos los productos del fabricante cuyo código de fabricante es igual a 2.
-- 21. Lista el nombre de los productos que tienen un precio menor o igual a 120€.
-- 22. Lista el nombre de los productos que tienen un precio mayor o igual a 400€.
-- 23. Lista el nombre de los productos que no tienen un precio mayor o igual a 400€.
-- 24. Lista todos los productos que tengan un precio entre 80€ y 300€. Sin utilizar el operador BETWEEN.
-- 25. Lista todos los productos que tengan un precio entre 60€ y 200€. Utilizando el operador BETWEEN.
-- 26. Lista todos los productos que tengan un precio mayor que 200€ y que el código de fabricante sea igual a 6.
-- 27. Lista todos los productos donde el código de fabricante sea 1, 3 o 5. Sin utilizar el operador IN.
-- 28. Lista todos los productos donde el código de fabricante sea 1, 3 o 5. Utilizando el operador IN.
-- 29. Lista el nombre y el precio de los productos en céntimos (Habrá que multiplicar por 100 el valor del precio). Cree un alias para la columna que contiene el precio que se llame céntimos.
-- 30. Lista los nombres de los fabricantes cuyo nombre empiece por la letra S.
-- 31. Lista los nombres de los fabricantes cuyo nombre termine por la vocal e.
-- 32. Lista los nombres de los fabricantes cuyo nombre contenga el carácter w.
-- 33. Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres.
-- 34. Devuelve una lista con el nombre de todos los productos que contienen la cadena Portátil en el nombre.
-- 35. Devuelve una lista con el nombre de todos los productos que contienen la cadena Monitor en el nombre y tienen un precio inferior a 215 €.
-- 36. Lista el nombre y el precio de todos los productos que tengan un precio mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente).