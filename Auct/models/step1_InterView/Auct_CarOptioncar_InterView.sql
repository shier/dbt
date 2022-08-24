{{ config(materialized='view',schema='stg')}}
Select
	[CAROPTIONCARID] [CarOptioncarID],
	[CAROPTIONID] [CarOptionID],
	[CARID] [CarID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_CarOptioncar_Raw]
