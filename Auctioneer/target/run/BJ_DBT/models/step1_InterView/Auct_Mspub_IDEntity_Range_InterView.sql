create view "stg"."Auct_Mspub_IDEntity_Range_InterView__dbt_tmp" as
    
Select
	[objid] [OBJID],
	[threshold] [ThresHold],
	[range] [Range],
	[pub_range] [Pub_Range],
	[current_pub_range] [Current_Pub_Range],
	[last_seed] [Last_Seed]
From stg.[Auct_Mspub_IDEntity_Range_Raw]
