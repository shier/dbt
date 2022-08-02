create view "stg"."Mer_TicketCompCode_FinalView__dbt_tmp" as
    
Select
	[Comp_Code],[Comp_Name],[Comp_Description] 
From stg.[Mer_TicketCompCode_Incr] 
Where [dbt_valid_to] is null
