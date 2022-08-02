create view "stg"."Mer_TicketSource_FinalView__dbt_tmp" as
    
Select
	[SourceID],[Source_Name],[Source_Description] 
From stg.[Mer_TicketSource_Incr] 
Where [dbt_valid_to] is null
