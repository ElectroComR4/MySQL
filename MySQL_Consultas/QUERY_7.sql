# Considerando la Query 6, filtra el resultado de la consulta para los países “Canada” y “France”.

select concat(cast(B.calendaryear as char(4)), "-", B.spanishmonthname) as YearMonth,
	sum(A.orderquantity),
	sum(A.salesamount)
from factinternetsales A 
inner join dimdate B on A.orderdatekey = B.datekey
inner join dimsalesterritory C on A.salesterritorykey = C.salesterritorykey
where C.salesterritorycountry in ('Canada', 'France')
group by concat(cast(B.calendaryear as char(4)), "-", B.spanishmonthname);