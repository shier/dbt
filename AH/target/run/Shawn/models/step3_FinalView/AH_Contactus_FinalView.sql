create view "stg"."AH_Contactus_FinalView__dbt_tmp" as
    
Select
	[ID],[Email],[FirstName],[LastName],[Message] 
From stg.[AH_Contactus_Incr] 
Where [dbt_valid_to] is null
