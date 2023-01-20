--1. Lista el apellido de todos los empleados.
select apellido from empleados;
--2. Lista el apellido de los empleados eliminando los apellidos que estén repetidos.
 select distinct apellido from empleados;
--3. Lista todas las columnas de la tabla empleados.
show columns from empleados;
--4. Lista el nombre y apellido de todos los empleados.
select nombre, apellido from empleados;
--5. Lista el cuit/cuil de los departamentos de los empleados que aparecen en la tabla empleados.
--6. Lista el nombre y apellido de los empleados en una única columna.
select concat(apellido, nombre) from empleados;
--7. Lista el nombre y apellido de los empleados en una única columna, convirtiendo todos los
--caracteres en mayúscula.
select upper(concat(apellido, nombre)) from empleados;
--8. Lista el nombre y apellido de los empleados en una única columna, convirtiendo todos los
--caracteres en minúscula.
select lower(concat(apellido, nombre)) from empleados;
--9. Lista el nombre de los departamentos y el valor del presupuesto actual ordenado de forma ascendente.
select nombre, presupuesto from departamentos order by presupuesto asc;
--10. Lista el nombre de todos los departamentos ordenados de forma ascendente.
select nombre from departamentos order by nombre asc;
--11. Lista el nombre de todos los departamentos ordenados de forma descendente.
select nombre from departamentos order by nombre desc;
--12. Lista el apellido y el nombre de todos los empleados, ordenados de forma alfabética tendiendo en cuenta en primer lugar su apellido y luego su nombre.
SELECT apellido, nombre FROM empleados ORDER BY apellido, nombre;
--13. Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen mayor presupuesto.
SELECT nombre, presupuesto FROM departamentos ORDER BY presupuesto DESC LIMIT 3;
--14. Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen menor presupuesto.
SELECT nombre, presupuesto FROM departamentos ORDER BY presupuesto ASC LIMIT 3;
--15. Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que
--tienen un presupuesto mayor o igual a $150000.
SELECT nombre, presupuesto FROM departamentos WHERE presupuesto >= 150000;
--16. Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que tienen un presupuesto entre $100000 y $200000. Sin utilizar el operador BETWEEN.
SELECT nombre, presupuesto FROM departamentos WHERE presupuesto > 100000 AND presupuesto < 200000;
--17. Devuelve una lista con el nombre de los departamentos que no tienen un presupuesto entre $100000 y $200000. Sin utilizar el operador BETWEEN.
SELECT nombre FROM departamentos WHERE NOT (presupuesto > 100000 AND presupuesto < 200000);
--18. Devuelve una lista con el nombre de los departamentos que tienen un presupuesto entre $100000 y $200000. Utilizando el operador BETWEEN.
SELECT nombre, presupuesto FROM departamentos WHERE presupuesto BETWEEN 100000 AND 200000;
--19. Devuelve una lista con el nombre de los departamentos que no tienen un presupuesto entre $100000 y $200000. Utilizando el operador BETWEEN.
SELECT nombre FROM departamentos WHERE NOT (presupuesto BETWEEN 100000 AND 200000);
--20. Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno.
SELECT empleados.nombre, empleados.apellido, departamentos.nombre, departamentos.presupuesto
FROM empleados
JOIN departamentos ON empleados.codigo_departamento = departamentos.codigo;
--21. Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno. Ordena el resultado, en primer lugar por el nombre del departamento (en orden alfabético) y en segundo lugar por apellido y el nombre de los empleados.
SELECT empleados.nombre, empleados.apellido, departamentos.nombre, departamentos.presupuesto
FROM empleados
JOIN departamentos ON empleados.codigo_departamento = departamentos.codigo
ORDER BY departamentos.nombre, empleados.apellido, empleados.nombre;
--22. Devuelve un listado con el código y el nombre del departamento, solamente de aquellos departamentos que tienen empleados.
SELECT codigo, nombre FROM departamentos WHERE codigo IN (SELECT codigo_departamento FROM empleados);
--23. Devuelve el nombre del departamento donde trabaja el empleado que tiene el cuil 27-38382980-3.
SELECT departamentos.nombre
FROM departamentos
JOIN empleados ON departamentos.codigo = empleados.codigo_departamento
WHERE empleados.cuil = '27-38382980-3';
--24. Devuelve el nombre del departamento donde trabaja el empleado Pepe Ruiz.
SELECT departamentos.nombre
FROM departamentos
JOIN empleados ON departamentos.codigo = empleados.codigo_departamento
WHERE empleados.nombre = 'Pepe' AND empleados.apellido = 'Ruiz';
SELECT nombre, apellido FROM empleados
WHERE codigo_departamento = (SELECT codigo FROM departamentos WHERE nombre = 'I+D')
ORDER BY apellido, nombre;
--25. Devuelve un listado con los datos de los empleados que trabajan en el departamento de I+D. Ordena el resultado alfabéticamente.
SELECT nombre, apellido FROM empleados
WHERE codigo_departamento = (SELECT codigo FROM departamentos WHERE nombre = 'I+D')
ORDER BY apellido, nombre;
--26. Devuelve un listado con los datos de los empleados que trabajan en el departamento de Sistemas, Contabilidad o I+D. Ordena el resultado alfabéticamente.
SELECT nombre, apellido FROM empleados
WHERE codigo_departamento IN (SELECT codigo FROM departamentos WHERE nombre IN ('Sistemas', 'Contabilidad', 'I+D'))
ORDER BY apellido, nombre;
--27. Devuelve una lista con el nombre de los empleados que tienen los departamentos que no tienen un presupuesto entre $100000 y $200000.
SELECT nombre FROM empleados
WHERE codigo_departamento IN (SELECT codigo FROM departamentos WHERE presupuesto NOT BETWEEN 100000 AND 200000);
