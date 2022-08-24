create view "stg"."Auct_CarOptioncar_InterView__dbt_tmp" as
    
Select
	[CAROPTIONCARID] [CarOptioncarID],
	[CAROPTIONID] [CarOptionID],
	[CARID] [CarID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_CarOptioncar_Raw]
