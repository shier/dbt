{{ config(materialized='view',schema='stg')}}
Select
	[OBJID],[ThresHold],[Range],[Pub_Range],[Current_Pub_Range],[Last_Seed] 
From [Auct_Mspub_IDEntity_Range_Incr]