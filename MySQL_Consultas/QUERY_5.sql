# Escribe una consulta que obtenga el número de pedidos por turno de trabajo y número de semana.

select 
	B.weeknumberofyear,
    A.shift,
	sum(A.orders)
from factcallcenter A inner join dimdate B on A.datekey = B.datekey
group by B.weeknumberofyear, A.shift
order by B.weeknumberofyear desc, A.shift desc;