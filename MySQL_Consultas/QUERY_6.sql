# Escribe una consulta que obtenga el número de unidades y suma de las ventas agrupadas por año y mes.

select concat(cast(B.calendaryear as char(4)), "-", B.spanishmonthname) as YearMonth,
	sum(A.orderquantity),
	sum(A.salesamount)
from factinternetsales A inner join dimdate B on A.orderdatekey = B.datekey
group by concat(cast(B.calendaryear as char(4)), "-", B.spanishmonthname);