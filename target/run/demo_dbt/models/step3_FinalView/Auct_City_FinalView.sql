create view "stg"."Auct_City_FinalView__dbt_tmp" as
    
Select
	[CityID],[Name],[County],[State],[StateAbbreviation],[PostalCode] 
From stg.[Auct_City_Incr] 
Where [dbt_valid_to] is null
