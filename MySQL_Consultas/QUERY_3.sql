# Escribe una consulta que obtenga el número de incidencias por número de semana y tipo de salario.

select 
	B.weeknumberofyear,
    A.wagetype,
	sum(A.issuesraised)
from factcallcenter A inner join dimdate B on A.datekey = B.datekey
group by B.weeknumberofyear, A.wagetype
order by B.weeknumberofyear asc, A.wagetype asc;