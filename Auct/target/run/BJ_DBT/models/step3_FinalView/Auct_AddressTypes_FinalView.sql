create view "stg"."Auct_AddressTypes_FinalView__dbt_tmp" as
    
Select
	[AddressTypeID],[Name],[Created],[UpdateEventID],[Icon],[ProcessorName],[Level] 
From stg.[Auct_AddressTypes_Incr] 
Where [dbt_valid_to] is null
