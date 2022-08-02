{{ config(materialized='table',schema='dbo')}}
Select
	cast([OBJID] as int) [OBJID],
	cast([ThresHold] as int) [ThresHold],
	cast([Range] as bigint) [Range],
	cast([Pub_Range] as bigint) [Pub_Range],
	cast([Current_Pub_Range] as bigint) [Current_Pub_Range],
	cast([Last_Seed] as bigint) [Last_Seed] 
From stg.[Auct_Mspub_IDEntity_Range_FinalView]