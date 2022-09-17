{{ config(materialized='table',schema='dbo')}}
Select
	cast([OBJID] as int) [objid],
	cast([ThresHold] as int) [threshold],
	cast([Range] as bigint) [range],
	cast([Pub_Range] as bigint) [pub_range],
	cast([Current_Pub_Range] as bigint) [current_pub_range],
	cast([Last_Seed] as bigint) [last_seed] 
From stg.[Auct_Mspub_IDEntity_Range_FinalView]