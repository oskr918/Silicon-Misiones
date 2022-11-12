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
--13. Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen mayor presupuesto.
--14. Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen menor presupuesto.
--15. Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que
--tienen un presupuesto mayor o igual a $150000.
--16. Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que tienen un presupuesto entre $100000 y $200000. Sin utilizar el operador BETWEEN.
--17. Devuelve una lista con el nombre de los departamentos que no tienen un presupuesto entre $100000 y $200000. Sin utilizar el operador BETWEEN.
--18. Devuelve una lista con el nombre de los departamentos que tienen un presupuesto entre $100000 y $200000. Utilizando el operador BETWEEN.
--19. Devuelve una lista con el nombre de los departamentos que no tienen un presupuesto entre $100000 y $200000. Utilizando el operador BETWEEN.
--20. Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno.
--21. Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno. Ordena el resultado, en primer lugar por el nombre del departamento (en orden alfabético) y en segundo lugar por apellido y el nombre de los empleados.
--22. Devuelve un listado con el código y el nombre del departamento, solamente de aquellos departamentos que tienen empleados.
--23. Devuelve el nombre del departamento donde trabaja el empleado que tiene el cuil 27-38382980-3.
--24. Devuelve el nombre del departamento donde trabaja el empleado Pepe Ruiz.
--25. Devuelve un listado con los datos de los empleados que trabajan en el departamento de I+D. Ordena el resultado alfabéticamente.
--26. Devuelve un listado con los datos de los empleados que trabajan en el departamento de Sistemas, Contabilidad o I+D. Ordena el resultado alfabéticamente.
--27. Devuelve una lista con el nombre de los empleados que tienen los departamentos que no tienen un presupuesto entre $100000 y $200000.