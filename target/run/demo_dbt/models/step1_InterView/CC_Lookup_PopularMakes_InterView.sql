create view "stg"."CC_Lookup_PopularMakes_InterView__dbt_tmp" as
    
Select
	cast([Make] as nvarchar(4000)) [Make],
	[DateInsertedUTC] [DateinsertedUTC]
From stg.[CC_Lookup_PopularMakes_Raw]
