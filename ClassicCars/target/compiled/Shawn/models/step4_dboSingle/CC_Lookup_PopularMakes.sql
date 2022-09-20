
Select
	cast([Make] as nvarchar(4000)) [Make],
	cast([DateinsertedUTC] as datetime) [DateInsertedUTC] 
From stg.[CC_Lookup_PopularMakes_FinalView]