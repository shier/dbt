create view "stg"."Auct_Mspub_IDEntity_Range_FinalView__dbt_tmp" as
    
Select
	[OBJID],[ThresHold],[Range],[Pub_Range],[Current_Pub_Range],[Last_Seed] 
From [Auct_Mspub_IDEntity_Range_Incr] 
Where [dbt_valid_to] is null
