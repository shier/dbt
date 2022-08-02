create view "stg"."Auct_SaleStatus_FinalView__dbt_tmp" as
    
Select
	[SaleStatusID],[Name],[Created],[UpdateEventID],[ClassName] 
From stg.[Auct_SaleStatus_Incr] 
Where [dbt_valid_to] is null
