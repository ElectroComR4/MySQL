# Escribe una consulta obteniendo el número total de llamadas (calls), 
# número de pedidos (orders), número de incidencias (issuesraised), 
# tiempo medio de por incidencia (averagetimeperissue) y número de operadores (totaloperators)  
# agrupados por Año, Mes y Día.

select 
	B.calendaryear,
    B.spanishmonthname,
    B.daynumberofmonth,
	sum(A.calls),
    sum(A.orders),
    sum(A.issuesraised),
    avg(A.averagetimeperissue),
    sum(A.totaloperators)
from factcallcenter A inner join dimdate B on A.datekey = B.datekey
group by B.calendaryear, B.spanishmonthname, B.daynumberofmonth
order by 2 desc;

