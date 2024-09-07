SELECT
    r.Nombre AS Rol,
    
FROM tienda_ropa.rol AS r
INNER JOIN tienda_ropa.cliente AS cl
    ON r.Codigo = cl.RolID
INNER JOIN tienda_ropa.empleado AS e
    ON r.Codigo = e.EmpleadoID;
