# Escribe una consulta para obtener el total de llamadas (calls) agrupados por cada año. 
# Ordena el resultado por el número de llamadas descendente.

#Respuesta es 2014 pues solo hay un año

#Primer método

select 

	year(Date),
	sum(calls)
from adventureworks_dw.factcallcenter
group by year(Date);


#Segundo método con join:

select 
	B.calendaryear,
	sum(A.calls)
from factcallcenter A inner join dimdate B on A.datekey = B.datekey
group by B.calendaryear
order by 2 desc;

